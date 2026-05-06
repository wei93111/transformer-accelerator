`include "define.v"

module ppu (
    input                         i_clk,
    input                         i_rst_n,

    // ctrl in
    input                         i_ppu_start,
    input  [`ACC_W * `VL   - 1:0] i_acc_data,
    input  [1                 :0] i_mode,
    input                         i_relu_en,

    // scale and bias in
    input                         i_scale_buf_we,
    input  [`ADDR_W        - 1:0] i_scale_buf_addr_wr,
    input  [`SCALE_W * `VL - 1:0] i_scale_buf_data_wr,
    input                         i_bias_buf_we,
    input  [`ADDR_W        - 1:0] i_bias_buf_addr_wr,
    input  [`BIAS_W  * `VL - 1:0] i_bias_buf_data_wr,

    // output ram
    output                        o_out_we,
    output [`DATA8_W * `VL - 1:0] o_out_data,
    output [`ADDR_W        - 1:0] o_out_addr,

    // sf out
    output [`TRUNC_W * `VL - 1:0] o_sf_vsq,
    output [`TRUNC_W       - 1:0] o_sf_int4,
    output [`TRUNC_W       - 1:0] o_sf_int8,

    // softmax out
    output [`TRUNC_W * `VL - 1:0] o_softmax_runmax,
    output [`NUMER_W * `VL - 1:0] o_softmax_numer,
    output [`DENOM_W * `VL - 1:0] o_softmax_denom,
    output                        o_softmax_numer_valid,
    output                        o_softmax_denom_valid,

    // finish
    output                        o_vec_done,
    output                        o_finish
);

    integer i;


    // states
    localparam S_IDLE = 2'd0;
    localparam S_MAX  = 2'd1;
    localparam S_CALC = 2'd2;


    // ctrl
    reg  [1                 :0] state_w,               state_r;
    reg                         max_done_w,            max_done_r;
    reg                         qnt_start_w,           qnt_start_r;
    reg  [`ADDR_W        - 1:0] acc_cnt_w,             acc_cnt_r;
    reg  [`ADDR_W        - 1:0] tile_cnt_w,            tile_cnt_r;
    reg  [`ADDR_W        - 1:0] vsq_cnt_w,             vsq_cnt_r;

    // ppu
    reg  [`FULL_W  * `VL - 1:0] scale_res_w,           scale_res_r;
    reg  [`FULL_W  * `VL - 1:0] bias_res;
    reg  [`FULL_W  * `VL - 1:0] relu_res_w,            relu_res_r;
    reg  [`TRUNC_W * `VL - 1:0] trunc_res_w,           trunc_res_r;

    wire [`ADDR_W        - 1:0] scale_addr;
    wire [`SCALE_W * `VL - 1:0] scale_data;
    wire [`ADDR_W        - 1:0] bias_addr;
    wire [`BIAS_W  * `VL - 1:0] bias_data;

    // vsq buffer
    wire                        vsq_buf_we;
    wire [`ADDR_W        - 1:0] vsq_buf_addr_wr;
    wire [`ADDR_W        - 1:0] vsq_buf_addr_rd;
    wire [`TRUNC_W * `VL - 1:0] vsq_buf_data_wr;
    wire [`TRUNC_W * `VL - 1:0] vsq_buf_data_rd;

    // quantize
    wire                        qnt_start;
    wire                        qnt_max_done;
    wire [`TRUNC_W * `VL - 1:0] qnt_data;
    wire                        qnt_valid;

    // softmax
    wire                        sft_start;
    wire [`TRUNC_W * `VL - 1:0] sft_data;

    // delay registers
    reg                         data_valid_pl0_w,      data_valid_pl0_r;
    reg                         data_valid_pl1_w,      data_valid_pl1_r;
    reg                         data_valid_pl2_w,      data_valid_pl2_r;

    reg                         qnt_start_pl0_w,       qnt_start_pl0_r;
    reg                         qnt_start_pl1_w,       qnt_start_pl1_r;
    reg                         qnt_start_pl2_w,       qnt_start_pl2_r;

    reg                         max_done_pl0_w,        max_done_pl0_r;
    reg                         max_done_pl1_w,        max_done_pl1_r;
    reg                         max_done_pl2_w,        max_done_pl2_r;

    reg                         sft_start_pl0_w,       sft_start_pl0_r;
    reg                         sft_start_pl1_w,       sft_start_pl1_r;
    reg                         sft_start_pl2_w,       sft_start_pl2_r;

    reg  [`ADDR_W        - 1:0] vsq_buf_addr_wr_pl0_w, vsq_buf_addr_wr_pl0_r;
    reg  [`ADDR_W        - 1:0] vsq_buf_addr_wr_pl1_w, vsq_buf_addr_wr_pl1_r;
    reg  [`ADDR_W        - 1:0] vsq_buf_addr_wr_pl2_w, vsq_buf_addr_wr_pl2_r;

    reg  [`ADDR_W        - 1:0] bias_addr_pl0_w,       bias_addr_pl0_r;

    // ctrl params
    wire [`ADDR_W        - 1:0] TILE = (`M / `VL) * (`N / `AD);
    wire [`ADDR_W        - 1:0] AD   = `AD;
    wire [`ADDR_W        - 1:0] VSQ  = `VSQ_BUF_D / `AD;


    //////////
    // ctrl //
    //////////

    always @(*) begin

        qnt_start_w = 1'b0;

        state_w     = state_r;
        max_done_w  = max_done_r;
        acc_cnt_w   = acc_cnt_r;
        tile_cnt_w  = tile_cnt_r;
        vsq_cnt_w   = vsq_cnt_r;

        case (state_r)
            S_IDLE: begin
                if (i_ppu_start) begin
                    if (i_mode == `INT4_VSQ) begin
                        state_w = S_CALC;
                    end else if (max_done_r) begin
                        state_w = S_CALC;
                    end else begin
                        state_w = S_MAX;
                    end
                end
            end
            S_MAX: begin
                // acc cnt
                if (acc_cnt_r == AD - 1) begin
                    acc_cnt_w = 0;
                    state_w   = S_IDLE;
                end else begin
                    acc_cnt_w = acc_cnt_r + 1;
                end

                // tile cnt
                if (acc_cnt_r == AD - 1) begin
                    if (tile_cnt_r == TILE - 1) begin
                        // matrix done
                        tile_cnt_w = 0;
                    end else begin
                        tile_cnt_w = tile_cnt_r + 1;
                    end
                end

                // vsq cnt
                if (acc_cnt_r == AD - 1) begin
                    if (vsq_cnt_r == VSQ - 1) begin
                        vsq_cnt_w = 0;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 1;
                    end
                end

                // max done (one cycle earlier)
                if (tile_cnt_r == TILE - 1 && acc_cnt_r == AD - 2) begin
                    max_done_w = 1'b1;
                end
            end
            S_CALC: begin
                // acc cnt
                if (acc_cnt_r == AD - 1) begin
                    acc_cnt_w = 0;
                    state_w   = S_IDLE;
                end else begin
                    acc_cnt_w = acc_cnt_r + 1;
                end

                // tile cnt
                if (acc_cnt_r == AD - 1) begin
                    if (tile_cnt_r == TILE - 1) begin
                        // matrix done
                        tile_cnt_w = 0;
                    end else begin
                        tile_cnt_w = tile_cnt_r + 1;
                    end
                end

                // vsq cnt
                if (acc_cnt_r == AD - 1) begin
                    if (vsq_cnt_r == VSQ - 1) begin
                        vsq_cnt_w = 0;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 1;
                    end
                end

                // max done (one cycle earlier)
                if (tile_cnt_r == TILE - 1 && acc_cnt_r == AD - 2) begin
                    max_done_w = 1'b0;
                end

                // quant start (one cycle earlier)
                if (vsq_cnt_r == VSQ - 1 && acc_cnt_r == AD - 2) begin
                    qnt_start_w = 1'b1;
                end
            end
            default: begin
            end
        endcase
    end


    /////////
    // ppu //
    /////////

    // datapath
    always @(*) begin
        // stage 0: scale
        for (i = 0; i < `VL; i = i + 1) begin
            scale_res_w[i*`FULL_W +: `FULL_W] = $signed({1'b0, scale_data[i*`SCALE_W +: `SCALE_W]}) * $signed(i_acc_data[i*`ACC_W +: `ACC_W]);
        end

        // stage 1: bias add / relu
        for (i = 0; i < `VL; i = i + 1) begin
            bias_res[i*`FULL_W +: `FULL_W] = $signed(bias_data[i*`BIAS_W +: `BIAS_W]) + $signed(scale_res_r[i*`FULL_W +: `FULL_W]);
            relu_res_w[i*`FULL_W +: `FULL_W] = (i_relu_en && bias_res[i*`FULL_W + `FULL_W - 1]) ? 0 : bias_res[i*`FULL_W +: `FULL_W];
        end

        // stage 2: truncate
        for (i = 0; i < `VL; i = i + 1) begin
            trunc_res_w[i*`TRUNC_W +: `TRUNC_W] = truncate(relu_res_r[i*`FULL_W +: `FULL_W]);
        end
    end

    // delay registers
    always @(*) begin
        data_valid_pl0_w      = (state_r == S_CALC);
        data_valid_pl1_w      = data_valid_pl0_r;
        data_valid_pl2_w      = data_valid_pl1_r;

        vsq_buf_addr_wr_pl0_w = acc_cnt_r + vsq_cnt_r * AD;
        vsq_buf_addr_wr_pl1_w = vsq_buf_addr_wr_pl0_r;
        vsq_buf_addr_wr_pl2_w = vsq_buf_addr_wr_pl1_r;

        qnt_start_pl0_w       = qnt_start_r;
        qnt_start_pl1_w       = qnt_start_pl0_r;
        qnt_start_pl2_w       = qnt_start_pl1_r;

        max_done_pl0_w        = max_done_r;
        max_done_pl1_w        = max_done_pl0_r;
        max_done_pl2_w        = max_done_pl1_r;

        sft_start_pl0_w       = i_ppu_start;
        sft_start_pl1_w       = sft_start_pl0_r;
        sft_start_pl2_w       = sft_start_pl1_r;

        bias_addr_pl0_w       = acc_cnt_r;
    end

    // scale
    assign scale_addr = acc_cnt_r;

    buffer #(
        .WIDTH ( `SCALE_W * `VL ),
        .DEPTH ( `AD )
    ) u_scale_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( i_scale_buf_we ),
        .i_addr_wr ( i_scale_buf_addr_wr ),
        .i_data_wr ( i_scale_buf_data_wr ),
        .i_addr_rd ( scale_addr ),
        .o_data_rd ( scale_data )
    );

    // bias
    assign bias_addr = bias_addr_pl0_r;

    buffer #(
        .WIDTH ( `BIAS_W * `VL ),
        .DEPTH ( `AD )
    ) u_bias_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( i_bias_buf_we ),
        .i_addr_wr ( i_bias_buf_addr_wr ),
        .i_data_wr ( i_bias_buf_data_wr ),
        .i_addr_rd ( bias_addr ),
        .o_data_rd ( bias_data )
    );

    function automatic [`TRUNC_W - 1:0] truncate;
        input [`FULL_W - 1:0] data;

        reg  [`FULL_W  - 1:0] data_abs;
        reg  [`TRUNC_W - 1:0] data_abs_trunc;
        
        begin
            data_abs       = (data[`FULL_W-1]) ? ~data + 1 : data;
            data_abs_trunc = (data_abs[`FRAC_W-1]) ? data_abs[`FRAC_W +: `TRUNC_W] + 1 : data_abs[`FRAC_W +: `TRUNC_W];
            truncate       = (data[`FULL_W-1]) ? ~data_abs_trunc + 1 : data_abs_trunc;
        end
    endfunction


    ////////////////
    // vsq buffer //
    ////////////////

    assign vsq_buf_we      = data_valid_pl2_r;
    assign vsq_buf_addr_wr = vsq_buf_addr_wr_pl2_r;
    assign vsq_buf_data_wr = trunc_res_r;

    buffer #(
        .WIDTH ( `TRUNC_W * `VL ),
        .DEPTH ( `VSQ_BUF_D )
    ) u_vsq_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( vsq_buf_we ),
        .i_addr_wr ( vsq_buf_addr_wr ),
        .i_data_wr ( vsq_buf_data_wr ),
        .i_addr_rd ( vsq_buf_addr_rd ),
        .o_data_rd ( vsq_buf_data_rd )
    );


    //////////////
    // quantize //
    //////////////

    assign qnt_start    = qnt_start_pl2_r;
    assign qnt_max_done = max_done_pl2_r;
    assign qnt_data     = trunc_res_r;
    assign qnt_valid    = data_valid_pl2_r;

    quantize u_quantize (
        .i_clk      ( i_clk ),
        .i_rst_n    ( i_rst_n ),

        .i_start    ( qnt_start ),
        .i_mode     ( i_mode ),
        .i_max_done ( qnt_max_done ),
        .i_data     ( qnt_data ),
        .i_valid    ( qnt_valid ),

        .i_buf_data ( vsq_buf_data_rd ),
        .o_buf_addr ( vsq_buf_addr_rd ),

        .o_out_we   ( o_out_we ),
        .o_out_data ( o_out_data ),
        .o_out_addr ( o_out_addr ),

        .o_sf_vsq   ( o_sf_vsq ),
        .o_sf_int4  ( o_sf_int4 ),
        .o_sf_int8  ( o_sf_int8 ),
        .o_vec_done ( o_vec_done ),
        .o_finish   ( o_finish )
    );


    /////////////
    // softmax //
    /////////////

    assign sft_start = sft_start_pl2_r;
    assign sft_data  = trunc_res_r;

    softmax u_softmax (
        .i_clk         ( i_clk ),
        .i_rst_n       ( i_rst_n ),

        .i_start       ( sft_start ),
        .i_data        ( sft_data ),

        .o_runmax      ( o_softmax_runmax ),
        .o_numer       ( o_softmax_numer ),
        .o_denom       ( o_softmax_denom ),
        .o_numer_valid ( o_softmax_numer_valid ),
        .o_denom_valid ( o_softmax_denom_valid )
    );


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state_r               <= S_IDLE;
            max_done_r            <= 0;
            qnt_start_r           <= 0;
            acc_cnt_r             <= 0;
            tile_cnt_r            <= 0;
            vsq_cnt_r             <= 0;

            scale_res_r           <= 0;
            relu_res_r            <= 0;
            trunc_res_r           <= 0;

            data_valid_pl0_r      <= 0;
            data_valid_pl1_r      <= 0;
            data_valid_pl2_r      <= 0;

            qnt_start_pl0_r       <= 0;
            qnt_start_pl1_r       <= 0;
            qnt_start_pl2_r       <= 0;

            max_done_pl0_r        <= 0;
            max_done_pl1_r        <= 0;
            max_done_pl2_r        <= 0;

            sft_start_pl0_r       <= 0;
            sft_start_pl1_r       <= 0;
            sft_start_pl2_r       <= 0;

            vsq_buf_addr_wr_pl0_r <= 0;
            vsq_buf_addr_wr_pl1_r <= 0;
            vsq_buf_addr_wr_pl2_r <= 0;

            bias_addr_pl0_r       <= 0;
        end else begin
            state_r               <= state_w;
            max_done_r            <= max_done_w;
            qnt_start_r           <= qnt_start_w;
            acc_cnt_r             <= acc_cnt_w;
            tile_cnt_r            <= tile_cnt_w;
            vsq_cnt_r             <= vsq_cnt_w;

            scale_res_r           <= scale_res_w;
            relu_res_r            <= relu_res_w;
            trunc_res_r           <= trunc_res_w;

            data_valid_pl0_r      <= data_valid_pl0_w;
            data_valid_pl1_r      <= data_valid_pl1_w;
            data_valid_pl2_r      <= data_valid_pl2_w;

            qnt_start_pl0_r       <= qnt_start_pl0_w;
            qnt_start_pl1_r       <= qnt_start_pl1_w;
            qnt_start_pl2_r       <= qnt_start_pl2_w;

            max_done_pl0_r        <= max_done_pl0_w;
            max_done_pl1_r        <= max_done_pl1_w;
            max_done_pl2_r        <= max_done_pl2_w;

            sft_start_pl0_r       <= sft_start_pl0_w;
            sft_start_pl1_r       <= sft_start_pl1_w;
            sft_start_pl2_r       <= sft_start_pl2_w;

            vsq_buf_addr_wr_pl0_r <= vsq_buf_addr_wr_pl0_w;
            vsq_buf_addr_wr_pl1_r <= vsq_buf_addr_wr_pl1_w;
            vsq_buf_addr_wr_pl2_r <= vsq_buf_addr_wr_pl2_w;

            bias_addr_pl0_r       <= bias_addr_pl0_w;
        end
    end

endmodule
