`include "define.v"

module mm_ctrl (
    input                       i_clk,
    input                       i_rst_n,

    input  [1               :0] i_mode,
    input                       i_start,

    input  [`VEC_W * `VL - 1:0] i_a_data,
    input  [`VEC_W       - 1:0] i_b_data,
    output [`ADDR_W      - 1:0] o_a_addr,
    output [`ADDR_W      - 1:0] o_b_addr,

    output                      o_tile_done,
    output                      o_mtrx_done,

    output                      o_ppu_start,
    output [`ACC_W * `VL - 1:0] o_acc_data,
    output [1               :0] o_mode
);

    genvar gi;


    // states
    localparam S_IDLE = 2'd0;
    localparam S_MAX  = 2'd1;
    localparam S_CALC = 2'd2;


    // ctrl
    reg  [1               :0] state_w,     state_r;
    reg  [1               :0] mode_w,      mode_r;
    reg                       tile_done_w, tile_done_r;
    reg                       mtrx_done_w, mtrx_done_r;
    reg                       ppu_start_w, ppu_start_r;

    // addr gen
    reg  [`ADDR_W      - 1:0] b_cnt_w,     b_cnt_r;
    reg  [`ADDR_W      - 1:0] a_cnt_w,     a_cnt_r;
    reg  [`ADDR_W      - 1:0] col_cnt_w,   col_cnt_r;
    reg  [`ADDR_W      - 1:0] row_cnt_w,   row_cnt_r;

    // accumulator
    wire                      acc_we;
    wire [`ADDR_W      - 1:0] acc_addr;
    wire [`ACC_W * `VL - 1:0] acc_data;
    
    // mac
    wire [`ACC_W * `VL - 1:0] mac_res;

    // addr gen parameters
    wire [`ADDR_W      - 1:0] VL     = `VL;
    wire [`ADDR_W      - 1:0] STRIDE = (mode_r == `INT8) ? (`K / `INT8_VS) : (`K / `INT4_VS);
    wire [`ADDR_W      - 1:0] COL    = (`N / `AD);
    wire [`ADDR_W      - 1:0] ROW    = (`M / `VL);


    assign o_a_addr    = a_cnt_r + (row_cnt_r * STRIDE);
    assign o_b_addr    = b_cnt_r + (a_cnt_r * `N) + (col_cnt_r * `AD);

    assign o_tile_done = tile_done_r;
    assign o_mtrx_done = mtrx_done_r;

    assign o_ppu_start = ppu_start_r;
    assign o_acc_data  = acc_data;
    assign o_mode      = mode_r;


    //////////
    // ctrl //
    //////////

    always @(*) begin

        tile_done_w = 1'b0;
        mtrx_done_w = 1'b0;
        ppu_start_w = 1'b0;
        
        state_w     = state_r;
        mode_w      = mode_r;

        case (state_r)
            S_IDLE: begin
                if (i_start) begin
                    mode_w  = i_mode;
                    state_w = (i_mode == `INT4_VSQ) ? S_CALC : S_MAX;   // for INT4/INT8, one pass to calculate max first
                end
            end
            S_MAX: begin
                if (b_cnt_r == VL - 1 && a_cnt_r == STRIDE - 1 && col_cnt_r == COL - 1 && row_cnt_r == ROW - 1) begin
                    // mtrx max done (start calculate)
                    state_w = S_CALC;
                end

                // ppu start (one cycle earlier)
                if (b_cnt_r == VL - 2 && a_cnt_r == STRIDE - 1) begin
                    ppu_start_w = 1'b1;
                end
            end
            S_CALC: begin
                if (b_cnt_r == VL - 1 && a_cnt_r == STRIDE - 1) begin
                    // tile done
                    tile_done_w = 1'b1;
                    if (col_cnt_r == COL - 1 && row_cnt_r == ROW - 1) begin
                        // mtrx calc done
                        state_w = S_IDLE;
                        mtrx_done_w = 1'b1;
                    end
                end

                // ppu start (one cycle earlier)
                if (b_cnt_r == VL - 2 && a_cnt_r == STRIDE - 1) begin
                    ppu_start_w = 1'b1;
                end
            end
            default: begin
            end
        endcase
    end

    // addr gen
    always @(*) begin

        b_cnt_w    = b_cnt_r;
        a_cnt_w    = a_cnt_r;
        col_cnt_w  = col_cnt_r;
        row_cnt_w  = row_cnt_r;
        
        case (state_r)
            S_IDLE: begin
                if (i_start) begin
                    b_cnt_w    = 0;
                    a_cnt_w    = 0;
                    col_cnt_w  = 0;
                    row_cnt_w  = 0;
                end
            end
            S_MAX: begin
                // b_cnt
                if (b_cnt_r == VL - 1) begin
                    b_cnt_w = 0;
                end else begin
                    b_cnt_w = b_cnt_r + 1;
                end

                // a_cnt
                if (b_cnt_r == VL - 1) begin
                    if (a_cnt_r == STRIDE - 1) begin
                        // tile done
                        a_cnt_w = 0;
                    end else begin
                        a_cnt_w = a_cnt_r + 1;
                    end
                end

                // col_cnt
                if (b_cnt_r == VL - 1 && a_cnt_r == STRIDE - 1) begin
                    if (col_cnt_r == COL - 1) begin
                        col_cnt_w = 0;
                    end else begin
                        col_cnt_w = col_cnt_r + 1;
                    end
                end

                // row_cnt
                if (b_cnt_r == VL - 1 && a_cnt_r == STRIDE - 1 && col_cnt_r == COL - 1) begin
                    if (row_cnt_r == ROW - 1) begin
                        // matrix done
                        row_cnt_w = 0;
                    end else begin
                        row_cnt_w = row_cnt_r + 1;
                    end
                end
            end
            S_CALC: begin
                // b_cnt
                if (b_cnt_r == VL - 1) begin
                    b_cnt_w = 0;
                end else begin
                    b_cnt_w = b_cnt_r + 1;
                end

                // a_cnt
                if (b_cnt_r == VL - 1) begin
                    if (a_cnt_r == STRIDE - 1) begin
                        // tile done
                        a_cnt_w = 0;
                    end else begin
                        a_cnt_w = a_cnt_r + 1;
                    end
                end

                // col_cnt
                if (b_cnt_r == VL - 1 && a_cnt_r == STRIDE - 1) begin
                    if (col_cnt_r == COL - 1) begin
                        col_cnt_w = 0;
                    end else begin
                        col_cnt_w = col_cnt_r + 1;
                    end
                end

                // row_cnt
                if (b_cnt_r == VL - 1 && a_cnt_r == STRIDE - 1 && col_cnt_r == COL - 1) begin
                    if (row_cnt_r == ROW - 1) begin
                        // matrix done
                        row_cnt_w = 0;
                    end else begin
                        row_cnt_w = row_cnt_r + 1;
                    end
                end
            end
            default: begin
            end
        endcase
    end
    

    /////////
    // mac //
    /////////

    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: MAC_UNIT
            wire [`ACC_W - 1:0] psum;
            wire [`DAT_W - 1:0] a_data;
            wire [`DAT_W - 1:0] b_data;
            wire [`SF_W  - 1:0] a_sf;
            wire [`SF_W  - 1:0] b_sf;
            wire [`ACC_W - 1:0] result;

            assign psum    = (a_cnt_r == 0) ? 0 : acc_data[gi * `ACC_W +: `ACC_W];  // new round of accumulation
            assign a_data  = i_a_data[`SF_W + gi * `VEC_W +: `DAT_W];
            assign b_data  = i_b_data[`SF_W               +: `DAT_W];
            assign a_sf    = i_a_data[        gi * `VEC_W +:  `SF_W];
            assign b_sf    = i_b_data[0                   +:  `SF_W];

            mac mac_unit (
                .i_mode    ( mode_r ),
                .i_psum    ( psum ),
                .i_a_data  ( a_data ),
                .i_b_data  ( b_data ),
                .i_a_sf    ( a_sf ),
                .i_b_sf    ( b_sf ),
                .o_result  ( result )
            );

            assign mac_res[gi * `ACC_W +: `ACC_W] = result;
        end
    endgenerate


    /////////////////
    // accumulator //
    /////////////////

    assign acc_we   = (state_r != S_IDLE) ? 1'b1 : 1'b0;
    assign acc_addr = b_cnt_r;

    buffer #(
        .WIDTH ( `ACC_W * `VL ),
        .DEPTH ( `AD )
    ) accumulator (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( acc_we ),
        .i_addr_wr ( acc_addr ),
        .i_data_wr ( mac_res ),
        .i_addr_rd ( acc_addr ),
        .o_data_rd ( acc_data )
    );


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state_r     <= S_IDLE;
            mode_r      <= 0;
            tile_done_r <= 0;
            mtrx_done_r <= 0;
            ppu_start_r <= 0;
            b_cnt_r     <= 0;
            a_cnt_r     <= 0;
            col_cnt_r   <= 0;
            row_cnt_r   <= 0;
        end else begin
            state_r     <= state_w;
            mode_r      <= mode_w;
            tile_done_r <= tile_done_w;
            mtrx_done_r <= mtrx_done_w;
            ppu_start_r <= ppu_start_w;
            b_cnt_r     <= b_cnt_w;
            a_cnt_r     <= a_cnt_w;
            col_cnt_r   <= col_cnt_w;
            row_cnt_r   <= row_cnt_w;
        end
    end

endmodule
