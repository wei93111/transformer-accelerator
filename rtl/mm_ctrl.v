`include "define.v"

module mm_ctrl #(
    parameter VS = 64,
    parameter VL = 16,
    parameter AD = 16,
    parameter M  = 512,
    parameter K  = 256,
    parameter N  = 512,
    parameter I  = K / VS
)(
    input          i_clk,
    input          i_rst_n,
    input  [1:0]   i_mode,          // mode = 0: INT8 / 1: INT4 / 2: INT4_VSQ
    input          i_start,         // start signal
    output         o_tile_done,     // tile done
    output         o_mtrx_done,     // matrix done
    output         o_ppu_start,     // ppu start signal
    output [383:0] o_acc_data       // accumulator data
);

    genvar gi;


    // states
    localparam S_IDLE = 1'b0;
    localparam S_BUSY = 1'b1;


    // state ctrl
    reg  [1:0]    mode;
    reg           state;
    reg           tile_done, mtrx_done;
    reg           ppu_start;

    // addr ctrl
    reg  [3:0]    b_cnt;        // increment every cycle
    reg  [1:0]    a_cnt;        // increment every 16 cycles
    reg  [4:0]    col_cnt;      // increment every 16 * 4 cycles
    reg  [4:0]    row_cnt;      // increment every 16 * 4 * 32 cycles

    // ram interface
    wire [6:0]    ram_a_addr;
    wire [4223:0] ram_a_data;   // wide bus for 16 banks
    wire [10:0]   ram_b_addr;
    wire [263:0]  ram_b_data;

    // accumulator interface
    reg  [3:0]    acc_addr;
    wire          acc_we;
    wire [383:0]  acc_data;

    // mac interface
    wire [383:0]  mac_res;      // wide bus for 16 lanes


    assign o_tile_done = tile_done;
    assign o_mtrx_done = mtrx_done;
    assign o_ppu_start = ppu_start;
    assign o_acc_data  = acc_data;


    ////////////////
    // state ctrl //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            mode  <= 2'd0;
            state <= S_IDLE;
        end else begin
            case (state)
                S_IDLE: begin
                    if (i_start) begin
                        mode  <= i_mode;
                        state <= S_BUSY;
                    end
                end
                S_BUSY: begin
                    if (b_cnt == 4'd15 && a_cnt == 2'd3 && col_cnt == 5'd31 && row_cnt == 5'd31) begin
                        state <= S_IDLE;
                    end
                end
            endcase
        end
    end


    // finish signals
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            tile_done <= 1'b0;
            mtrx_done <= 1'b0;
            ppu_start <= 1'b0;
        end else begin
            // tile done (pull high 1 cycle)
            if (b_cnt == 4'd15 && a_cnt == 2'd3) begin
                tile_done <= 1'b1;
            end else begin
                tile_done <= 1'b0;
            end

            // matrix done (pull high 1 cycle)
            if (b_cnt == 4'd15 && a_cnt == 2'd3 && col_cnt == 5'd31 && row_cnt == 5'd31) begin
                mtrx_done <= 1'b1;
            end else begin
                mtrx_done <= 1'b0;
            end

            // ppu start (one cycle earlier)
            if (b_cnt == 4'd14 && a_cnt == 2'd3) begin
                ppu_start <= 1'b1;
            end else begin
                ppu_start <= 1'b0;
            end
        end
    end
    

    ///////////////
    // A buffers //
    ///////////////

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: A_BUF
            ram #(
                .VEC_WIDTH ( 264 ),
                .ARR_DEPTH ( 128 )
            ) ram_a (
                .i_clk   ( i_clk ),
                .i_rst_n ( 1'b1 ),      // no reset
                .i_we    ( 1'b0 ),      // no write
                .i_addr  ( ram_a_addr ),
                .i_data  ( 264'd0 ),
                .o_data  ( ram_a_data[gi*264 +: 264] )
            );
        end
    endgenerate


    //////////////
    // B buffer //
    //////////////

    ram #(
        .VEC_WIDTH ( 264 ),
        .ARR_DEPTH ( 2048 )
    ) ram_b (
        .i_clk   ( i_clk ),
        .i_rst_n ( 1'b1 ),          // no reset
        .i_we    ( 1'b0 ),          // no write
        .i_addr  ( ram_b_addr ),
        .i_data  ( 264'd0 ),
        .o_data  ( ram_b_data )
    );
    

    ///////////////
    // mac units //
    ///////////////

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: MAC_UNIT
            wire [23:0] psum = (a_cnt == 2'd0) ? 24'd0 : acc_data[gi*24 +: 24];  // new round of accumulation
            mac mac_unit (
                .i_mode    ( mode ),
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

    assign acc_we = (state == S_BUSY) ? 1'b1 : 1'b0;

    buffer #(
        .VEC_WIDTH ( 384 ),
        .ARR_DEPTH ( 16 )
    ) acc (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( acc_we ),
        .i_addr_wr ( acc_addr ),
        .i_data_wr ( mac_res ),
        .i_addr_rd ( acc_addr ),
        .o_data_rd ( acc_data )
    );


    //////////////
    // addr gen //
    //////////////

    assign ram_a_addr = a_cnt + (row_cnt * I);
    assign ram_b_addr = b_cnt + (a_cnt * N) + (col_cnt * AD);

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            acc_addr <= 4'd0;
            b_cnt    <= 4'd0;
            a_cnt    <= 2'd0;
            col_cnt  <= 5'd0;
            row_cnt  <= 5'd0;
        end else begin
            case (state)
                S_IDLE: begin
                    if (i_start) begin
                        acc_addr <= 4'd0;
                        b_cnt    <= 4'd0;
                        a_cnt    <= 2'd0;
                        col_cnt  <= 5'd0;
                        row_cnt  <= 5'd0;
                    end
                end
                S_BUSY: begin
                    // acc_addr
                    if (acc_addr == 4'd15) begin
                        acc_addr <= 4'd0;
                    end else begin
                        acc_addr <= acc_addr + 4'd1;
                    end

                    // b_cnt
                    if (b_cnt == 4'd15) begin
                        b_cnt <= 4'd0;
                    end else begin
                        b_cnt <= b_cnt + 4'd1;
                    end

                    // a_cnt
                    if (b_cnt == 4'd15) begin
                        if (a_cnt == 2'd3) begin
                            // tile done
                            a_cnt <= 2'd0;
                        end else begin
                            a_cnt <= a_cnt + 2'd1;
                        end
                    end

                    // col_cnt
                    if (b_cnt == 4'd15 && a_cnt == 2'd3) begin
                        if (col_cnt == 5'd31) begin
                            col_cnt <= 5'd0;
                        end else begin
                            col_cnt <= col_cnt + 5'd1;
                        end
                    end

                    // row_cnt
                    if (b_cnt == 4'd15 && a_cnt == 2'd3 && col_cnt == 5'd31) begin
                        if (row_cnt == 5'd31) begin
                            // matrix done
                            row_cnt <= 5'd0;
                        end else begin
                            row_cnt <= row_cnt + 5'd1;
                        end
                    end
                end
            endcase
        end
    end

endmodule
