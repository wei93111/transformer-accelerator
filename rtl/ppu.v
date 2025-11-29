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
    output [8  * 16        - 1:0] o_softmax_y,
    output [30 * 16        - 1:0] o_softmax_runmax,
    output [16 * 16        - 1:0] o_softmax_denom,
    output                        o_softmax_y_valid,
    output                        o_softmax_denom_valid,

    // finish
    output                        o_vec_done,
    output                        o_finish
);

    genvar gi;


    // states
    localparam S_IDLE = 2'd0;
    localparam S_MAX  = 2'd1;
    localparam S_CALC = 2'd2;


    // ctrl
    reg  [1                 :0] state_w,     state_r;
    reg                         max_done_w,  max_done_r;
    reg                         qnt_start_w, qnt_start_r;
    reg  [`ADDR_W        - 1:0] acc_cnt_w,   acc_cnt_r;
    reg  [`ADDR_W        - 1:0] tile_cnt_w,  tile_cnt_r;
    reg  [`ADDR_W        - 1:0] vsq_cnt_w,   vsq_cnt_r;

    // scaling
    wire [`ADDR_W        - 1:0] scale_addr;
    wire [`SCALE_W * `VL - 1:0] scale_data;
    wire [`FULL_W  * `VL - 1:0] scale_res;

    // bias add
    wire [`ADDR_W        - 1:0] bias_addr;
    wire [`BIAS_W  * `VL - 1:0] bias_data;
    wire [`FULL_W  * `VL - 1:0] bias_res;

    // relu
    wire [`FULL_W  * `VL - 1:0] relu_res;
    wire [`TRUNC_W * `VL - 1:0] relu_res_trunc;

    // vsq buffer
    wire                        vsq_buf_we;
    wire [`ADDR_W        - 1:0] vsq_buf_addr_wr;
    wire [`ADDR_W        - 1:0] vsq_buf_addr_rd;
    wire [`TRUNC_W * `VL - 1:0] vsq_buf_data_wr;
    wire [`TRUNC_W * `VL - 1:0] vsq_buf_data_rd;

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


    //////////////
    // datapath //
    //////////////

    // scaling
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

    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: SCALE
            assign scale_res[gi*`FULL_W +: `FULL_W] = $signed(scale_data[gi*`SCALE_W +: `SCALE_W]) * $signed(i_acc_data[gi*`ACC_W +: `ACC_W]);
        end
    endgenerate


    // bias add
    assign bias_addr = acc_cnt_r;

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

    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: BIAS_ADD
            assign bias_res[gi*`FULL_W +: `FULL_W] = $signed(bias_data[gi*`BIAS_W +: `BIAS_W]) + $signed(scale_res[gi*`FULL_W +: `FULL_W]);
        end
    endgenerate


    // relu (active when i_relu_en is high)
    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: RELU
            assign relu_res[gi*`FULL_W +: `FULL_W] = (i_relu_en && bias_res[gi * `FULL_W + `FULL_W - 1]) ? `FULL_W'd0 : bias_res[gi*`FULL_W +: `FULL_W];
        end
    endgenerate


    // truncation: Q30.10 -> INT18
    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: TRUNCATE
            assign relu_res_trunc[gi*`TRUNC_W +: `TRUNC_W] = truncate(relu_res[gi*`FULL_W +: `FULL_W]);
        end
    endgenerate

    function automatic [17:0] truncate;
        input [39:0] data;

        reg  [39:0] data_abs;       // Q30.10
        reg  [29:0] data_abs_rnd;   // INT30
        reg  [17:0] data_abs_sat;   // INT18
        
        begin
            data_abs     = (data[39]) ? ~data + 40'd1 : data;
            data_abs_rnd = (data_abs[9]) ? (data_abs >> 10) + 40'd1 : data_abs >> 10;
            data_abs_sat = (data_abs_rnd > {13'd0, {17{1'b1}}}) ? {1'b0, {17{1'b1}}} : data_abs_rnd[17:0];
            truncate     = (data[39]) ? ~data_abs_sat + 18'd1 : data_abs_sat;
        end
    endfunction


    ////////////////
    // vsq buffer //
    ////////////////

    assign vsq_buf_we      = (state_r == S_IDLE) ? 1'b0 : 1'b1;
    assign vsq_buf_addr_wr = acc_cnt_r + vsq_cnt_r * `VL;
    assign vsq_buf_data_wr = relu_res_trunc;

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

    quantize u_quantize (
        .i_clk      ( i_clk ),
        .i_rst_n    ( i_rst_n ),

        .i_start    ( qnt_start_r ),
        .i_mode     ( i_mode ),
        .i_max_done ( max_done_r ),
        .i_data     ( relu_res_trunc ),

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

    softmax u_softmax (
        .i_clk         ( i_clk ),
        .i_rst_n       ( i_rst_n ),
        .i_start       ( i_ppu_start ),
        .i_data        ( relu_res ),        // TODO: use truncated data

        .o_y           ( o_softmax_y ),
        .o_runmax      ( o_softmax_runmax ),
        .o_denom       ( o_softmax_denom ),
        .o_y_valid     ( o_softmax_y_valid ),
        .o_denom_valid ( o_softmax_denom_valid )
    );


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state_r     <= S_IDLE;
            max_done_r  <= 0;
            qnt_start_r <= 0;
            acc_cnt_r   <= 0;
            tile_cnt_r  <= 0;
            vsq_cnt_r   <= 0;
        end else begin
            state_r     <= state_w;
            max_done_r  <= max_done_w;
            qnt_start_r <= qnt_start_w;
            acc_cnt_r   <= acc_cnt_w;
            tile_cnt_r  <= tile_cnt_w;
            vsq_cnt_r   <= vsq_cnt_w;
        end
    end

endmodule
