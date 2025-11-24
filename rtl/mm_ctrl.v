`include "define.v"

module mm_ctrl (
    input                  i_clk,
    input                  i_rst_n,
    input  [1          :0] i_mode,
    input                  i_start,

    output                 o_tile_done,
    output                 o_mtrx_done,

    output                 o_ppu_start,
    output [24 * 16 - 1:0] o_acc_data,
    output [1          :0] o_mode
);

    genvar gi;


    // states
    localparam S_IDLE = 2'd0;
    localparam S_MAX  = 2'd1;
    localparam S_CALC = 2'd2;


    // ctrl
    reg  [1:0]            state_w,     state_r;
    reg  [1:0]            mode_w,      mode_r;
    reg                   tile_done_w, tile_done_r;
    reg                   mtrx_done_w, mtrx_done_r;
    reg                   ppu_start_w, ppu_start_r;

    // addr gen
    reg  [3:0]            b_cnt_w,     b_cnt_r;        // increment every cycle
    reg  [1:0]            a_cnt_w,     a_cnt_r;        // increment every 16 cycles
    reg  [4:0]            col_cnt_w,   col_cnt_r;      // increment every 16 * 4 cycles
    reg  [4:0]            row_cnt_w,   row_cnt_r;      // increment every 16 * 4 * 32 cycles
    reg  [3:0]            acc_addr_w,  acc_addr_r;

    // ram
    wire [6:0]            ram_a_addr;
    wire [264 * 16 - 1:0] ram_a_data;   // 264 x 16 banks
    wire [10:0]           ram_b_addr;
    wire [264 - 1:0]      ram_b_data;   // 264 x 1 bank

    // accumulator
    wire                  acc_we;
    wire [24 * 16 - 1:0]  acc_data;     // INT24 x 16 entries

    // mac
    wire [24 * 16 - 1:0]  mac_res;      // INT24 x 16 entries


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
                if (b_cnt_r == 4'd15 && a_cnt_r == 2'd3 && col_cnt_r == 5'd31 && row_cnt_r == 5'd31) begin
                    // mtrx max done (start calculate)
                    state_w = S_CALC;
                end

                // ppu start (one cycle earlier)
                if (b_cnt_r == (4'd15 - 4'd1) && a_cnt_r == 2'd3) begin
                    ppu_start_w = 1'b1;
                end
            end
            S_CALC: begin
                if (b_cnt_r == 4'd15 && a_cnt_r == 2'd3) begin
                    // tile done
                    tile_done_w = 1'b1;
                    if (col_cnt_r == 5'd31 && row_cnt_r == 5'd31) begin
                        // mtrx calc done
                        state_w = S_IDLE;
                        mtrx_done_w = 1'b1;
                    end
                end

                // ppu start (one cycle earlier)
                if (b_cnt_r == (4'd15 - 4'd1) && a_cnt_r == 2'd3) begin
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
        acc_addr_w = acc_addr_r;
        
        case (state_r)
            S_IDLE: begin
                if (i_start) begin
                    acc_addr_w = 0;
                    b_cnt_w    = 0;
                    a_cnt_w    = 0;
                    col_cnt_w  = 0;
                    row_cnt_w  = 0;
                end
            end
            S_MAX: begin
                // acc_addr
                if (acc_addr_r == 4'd15) begin
                    acc_addr_w = 0;
                end else begin
                    acc_addr_w = acc_addr_r + 4'd1;
                end

                // b_cnt
                if (b_cnt_r == 4'd15) begin
                    b_cnt_w = 0;
                end else begin
                    b_cnt_w = b_cnt_r + 4'd1;
                end

                // a_cnt
                if (b_cnt_r == 4'd15) begin
                    if (a_cnt_r == 2'd3) begin
                        // tile done
                        a_cnt_w = 0;
                    end else begin
                        a_cnt_w = a_cnt_r + 2'd1;
                    end
                end

                // col_cnt
                if (b_cnt_r == 4'd15 && a_cnt_r == 2'd3) begin
                    if (col_cnt_r == 5'd31) begin
                        col_cnt_w = 0;
                    end else begin
                        col_cnt_w = col_cnt_r + 5'd1;
                    end
                end

                // row_cnt
                if (b_cnt_r == 4'd15 && a_cnt_r == 2'd3 && col_cnt_r == 5'd31) begin
                    if (row_cnt_r == 5'd31) begin
                        // matrix done
                        row_cnt_w = 0;
                    end else begin
                        row_cnt_w = row_cnt_r + 5'd1;
                    end
                end
            end
            S_CALC: begin
                // acc_addr
                if (acc_addr_r == 4'd15) begin
                    acc_addr_w = 0;
                end else begin
                    acc_addr_w = acc_addr_r + 4'd1;
                end

                // b_cnt
                if (b_cnt_r == 4'd15) begin
                    b_cnt_w = 0;
                end else begin
                    b_cnt_w = b_cnt_r + 4'd1;
                end

                // a_cnt
                if (b_cnt_r == 4'd15) begin
                    if (a_cnt_r == 2'd3) begin
                        // tile done
                        a_cnt_w = 0;
                    end else begin
                        a_cnt_w = a_cnt_r + 2'd1;
                    end
                end

                // col_cnt
                if (b_cnt_r == 4'd15 && a_cnt_r == 2'd3) begin
                    if (col_cnt_r == 5'd31) begin
                        col_cnt_w = 0;
                    end else begin
                        col_cnt_w = col_cnt_r + 5'd1;
                    end
                end

                // row_cnt
                if (b_cnt_r == 4'd15 && a_cnt_r == 2'd3 && col_cnt_r == 5'd31) begin
                    if (row_cnt_r == 5'd31) begin
                        // matrix done
                        row_cnt_w = 0;
                    end else begin
                        row_cnt_w = row_cnt_r + 5'd1;
                    end
                end
            end
            default: begin
            end
        endcase
    end
    

    ///////////////
    // A buffers //
    ///////////////

    assign ram_a_addr = a_cnt_r + (row_cnt_r * `K / 64);

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: A_BUF
            ram #(
                .VEC_WIDTH ( 264 ),
                .ARR_DEPTH ( 128 )
            ) ram_a (
                .i_clk   ( i_clk ),
                .i_rst_n ( 1'b1 ),
                .i_we    ( 1'b0 ),
                .i_addr  ( ram_a_addr ),
                .i_data  ( 264'd0 ),
                .o_data  ( ram_a_data[gi*264 +: 264] )
            );
        end
    endgenerate


    //////////////
    // B buffer //
    //////////////
    
    assign ram_b_addr = b_cnt_r + (a_cnt_r * `N) + (col_cnt_r * 16);

    ram #(
        .VEC_WIDTH ( 264 ),
        .ARR_DEPTH ( 2048 )
    ) ram_b (
        .i_clk   ( i_clk ),
        .i_rst_n ( 1'b1 ),
        .i_we    ( 1'b0 ),
        .i_addr  ( ram_b_addr ),
        .i_data  ( 264'd0 ),
        .o_data  ( ram_b_data )
    );
    

    ///////////////
    // mac units //
    ///////////////

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: MAC_UNIT
            wire [23:0] psum = (a_cnt_r == 2'd0) ? 24'd0 : acc_data[gi*24 +: 24];  // new round of accumulation
            mac mac_unit (
                .i_mode    ( mode_r ),
                .i_psum    ( psum ),
                .i_a       ( ram_a_data[gi*264+8 +: 256] ),
                .i_b       ( ram_b_data[       8 +: 256] ),
                .i_scale_a ( ram_a_data[gi*264 +: 8] ),
                .i_scale_b ( ram_b_data[     0 +: 8] ),
                .o_result  ( mac_res[gi*24 +: 24] )
            );
        end
    endgenerate


    /////////////////
    // accumulator //
    /////////////////

    assign acc_we = (state_r != S_IDLE) ? 1'b1 : 1'b0;

    buffer #(
        .VEC_WIDTH ( 24 * 16 ),
        .ARR_DEPTH ( 16 )
    ) acc (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( acc_we ),
        .i_addr_wr ( acc_addr_r ),
        .i_data_wr ( mac_res ),
        .i_addr_rd ( acc_addr_r ),
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
            acc_addr_r  <= 0;
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
            acc_addr_r  <= acc_addr_w;
        end
    end

endmodule
