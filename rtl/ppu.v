`include "define.v"

module ppu (
    input                  i_clk,
    input                  i_rst_n,

    input                  i_ppu_start,
    input  [24 * 16 - 1:0] i_acc_data,
    input  [1          :0] i_mode,
    input                  i_relu_en,

    output                 o_ram_we,
    output [4  * 16 - 1:0] o_ram_data,
    output [5          :0] o_ram_addr,

    output [18 * 16 - 1:0] o_vsq_sf,
    output [17         :0] o_int4_sf,
    output [17         :0] o_int8_sf,
    output                 o_finish,

    output [8  * 16 - 1:0] o_softmax_y,
    output [30 * 16 - 1:0] o_softmax_runmax,
    output [16 * 16 - 1:0] o_softmax_denom,
    output                 o_softmax_y_valid,
    output                 o_softmax_denom_valid
);

    genvar gi;


    // states
    localparam S_IDLE = 2'd0;
    localparam S_MAX  = 2'd1;
    localparam S_CALC = 2'd2;

    // end tile cnt
    localparam MAX_TILE = (`M / 16) * (`N / 16);
    localparam CNT_W    = $clog2(MAX_TILE);


    // ctrl
    reg  [1:0]           state_w,       state_r;
    reg                  max_done_w,    max_done_r;
    reg  [3:0]           acc_cnt_w,     acc_cnt_r;
    reg  [CNT_W-1:0]     tile_cnt_w,    tile_cnt_r;
    reg  [1:0]           vsq_cnt_w,     vsq_cnt_r;
    reg                  quant_start_w, quant_start_r;

    // scaling
    wire [3:0]           scale_addr;
    wire [16 * 16 - 1:0] scale_data;        // Q6.10  x 16 entries
    wire [40 * 16 - 1:0] scale_res;         // Q30.10 x 16 entries

    // bias add
    wire [3:0]           bias_addr;
    wire [16 * 16 - 1:0] bias_data;         // Q6.10  x 16 entries
    wire [40 * 16 - 1:0] bias_res;          // Q30.10 x 16 entries

    // relu
    wire [40 * 16 - 1:0] relu_res;          // Q30.10 x 16 entries
    wire [18 * 16 - 1:0] relu_res_trunc;    // INT18  x 16 entries

    // vsq buffer
    wire                 vsq_buf_we;
    wire [5:0]           vsq_buf_addr_wr;
    wire [5:0]           vsq_buf_addr_rd;
    wire [18 * 16 - 1:0] vsq_buf_data_wr;   // INT18  x 16 entries
    wire [18 * 16 - 1:0] vsq_buf_data_rd;   // INT18  x 16 entries


    //////////
    // ctrl //
    //////////

    always @(*) begin

        quant_start_w = 1'b0;

        state_w       = state_r;
        max_done_w    = max_done_r;
        acc_cnt_w     = acc_cnt_r;
        tile_cnt_w    = tile_cnt_r;
        vsq_cnt_w     = vsq_cnt_r;

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
                if (acc_cnt_r == 4'd15) begin
                    acc_cnt_w = 0;
                    state_w   = S_IDLE;
                end else begin
                    acc_cnt_w = acc_cnt_r + 4'd1;
                end

                // tile cnt
                if (acc_cnt_r == 4'd15) begin
                    if (tile_cnt_r == (MAX_TILE - 1)) begin
                        // matrix done
                        tile_cnt_w = 0;
                    end else begin
                        tile_cnt_w = tile_cnt_r + 1;
                    end
                end

                // vsq cnt
                if (acc_cnt_r == 4'd15) begin
                    if (vsq_cnt_r == 2'd3) begin
                        vsq_cnt_w = 0;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 2'd1;
                    end
                end

                // max done (one cycle earlier)
                if (tile_cnt_r == (MAX_TILE - 1) && acc_cnt_r == (4'd15 - 4'd1)) begin
                    max_done_w = 1'b1;
                end
            end
            S_CALC: begin
                // acc cnt
                if (acc_cnt_r == 4'd15) begin
                    acc_cnt_w = 0;
                    state_w   = S_IDLE;
                end else begin
                    acc_cnt_w = acc_cnt_r + 4'd1;
                end

                // tile cnt
                if (acc_cnt_r == 4'd15) begin
                    if (tile_cnt_r == (MAX_TILE - 1)) begin
                        // matrix done
                        tile_cnt_w = 0;
                    end else begin
                        tile_cnt_w = tile_cnt_r + 1;
                    end
                end

                // vsq cnt
                if (acc_cnt_r == 4'd15) begin
                    if (vsq_cnt_r == 2'd3) begin
                        vsq_cnt_w = 0;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 2'd1;
                    end
                end

                // max done (one cycle earlier)
                if (tile_cnt_r == (MAX_TILE - 1) && acc_cnt_r == (4'd15 - 4'd1)) begin
                    max_done_w = 1'b0;
                end

                // quant start (one cycle earlier)
                if (vsq_cnt_r == 2'd3 && acc_cnt_r == (4'd15 - 4'd1)) begin
                    quant_start_w = 1'b1;
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
        .VEC_WIDTH ( 16 * 16 ),   // Q6.10 x 16 entries
        .ARR_DEPTH ( 16 )
    ) scale_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( 1'b1 ),
        .i_we      ( 1'b0 ),
        .i_addr_wr ( 4'd0 ),
        .i_data_wr ( 256'd0 ),
        .i_addr_rd ( scale_addr ),
        .o_data_rd ( scale_data )
    );

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: SCALE
            assign scale_res[gi*40 +: 40] = $signed(scale_data[gi*16 +: 16]) * $signed(i_acc_data[gi*24 +: 24]);
        end
    endgenerate


    // bias add
    assign bias_addr = acc_cnt_r;

    buffer #(
        .VEC_WIDTH ( 16 * 16 ),   // Q6.10 x 16 entries
        .ARR_DEPTH ( 16 )
    ) bias_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( 1'b1 ),
        .i_we      ( 1'b0 ),
        .i_addr_wr ( 4'd0 ),
        .i_data_wr ( 256'd0 ),
        .i_addr_rd ( bias_addr ),
        .o_data_rd ( bias_data )
    );

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: BIAS_ADD
            assign bias_res[gi*40 +: 40] = $signed(bias_data[gi*16 +: 16]) + $signed(scale_res[gi*40 +: 40]);
        end
    endgenerate


    // relu (active when i_relu_en is high)
    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: RELU
            assign relu_res[gi*40 +: 40] = (!i_relu_en || ($signed(bias_res[gi*40 +: 40]) > 40'sd0)) ? bias_res[gi*40 +: 40] : 40'd0;
        end
    endgenerate


    // truncation: Q30.10 -> INT18
    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: TRUNCATE
            assign relu_res_trunc[gi*18 +: 18] = truncate(relu_res[gi*40 +: 40]);
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
            data_abs_sat = (data_abs_rnd > {12'd0, {18{1'b1}}}) ? {18{1'b1}} : data_abs_rnd[17:0];
            truncate     = (data[39]) ? ~data_abs_sat + 18'd1 : data_abs_sat;
        end
    endfunction


    ////////////////
    // vsq buffer //
    ////////////////

    assign vsq_buf_we      = (state_r == S_IDLE) ? 1'b0 : 1'b1;
    assign vsq_buf_addr_wr = acc_cnt_r + vsq_cnt_r * 16;
    assign vsq_buf_data_wr = relu_res_trunc;

    buffer #(
        .VEC_WIDTH ( 18 * 16 ),   // INT18 x 16 entries
        .ARR_DEPTH ( 64 )
    ) vsq_buf (
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

    quantize quant (
        .i_clk      ( i_clk ),
        .i_rst_n    ( i_rst_n ),

        .i_start    ( quant_start_r ),
        .i_mode     ( i_mode ),
        .i_max_done ( max_done_r ),
        .i_data     ( relu_res_trunc ),

        .i_buf_data ( vsq_buf_data_rd ),
        .o_buf_addr ( vsq_buf_addr_rd ),

        .o_ram_we   ( o_ram_we ),
        .o_ram_data ( o_ram_data ),
        .o_ram_addr ( o_ram_addr ),

        .o_vsq_sf   ( o_vsq_sf ),
        .o_int4_sf  ( o_int4_sf ),
        .o_int8_sf  ( o_int8_sf ),
        .o_finish   ( o_finish )
    );


    /////////////
    // softmax //
    /////////////

    softmax softmax (
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
            state_r       <= S_IDLE;
            max_done_r    <= 0;
            acc_cnt_r     <= 0;
            tile_cnt_r    <= 0;
            vsq_cnt_r     <= 0;
            quant_start_r <= 0;
        end else begin
            state_r       <= state_w;
            max_done_r    <= max_done_w;
            acc_cnt_r     <= acc_cnt_w;
            tile_cnt_r    <= tile_cnt_w;
            vsq_cnt_r     <= vsq_cnt_w;
            quant_start_r <= quant_start_w;
        end
    end

endmodule
