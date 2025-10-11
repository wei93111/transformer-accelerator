module ppu (
    input          i_clk,
    input          i_rst_n,
    input  [1:0]   i_mode,          // mode = 0: INT8 / 1: INT4 / 2: INT4_VSQ
    input          i_ppu_start,     // ppu start signal
    input  [383:0] i_acc_data       // accumulator data
);

    // states
    localparam S_IDLE = 1'b0;
    localparam S_BUSY = 1'b1;


    // state ctrl
    reg        state;
    reg  [3:0] acc_cnt;
    reg  [1:0] tile_cnt;

    // vsq buffer interface
    wire       vsq_buf_we;
    wire [5:0] vsq_buf_addr_wr


    //////////
    // ctrl //
    //////////

    // state
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state <= S_IDLE;
        end else begin
            case (state)
                S_IDLE: begin
                    if (i_ppu_start) begin
                        state <= S_BUSY;
                    end
                end
                S_BUSY: begin
                    if (acc_cnt == 4'd15) begin
                        state <= S_IDLE;
                    end
                end
            endcase
        end
    end

    // counters
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            acc_cnt  <= 4'd0;
            tile_cnt <= 2'd0;
        end else begin
            case (state)
                S_IDLE: begin
                end
                S_BUSY: begin
                    // acc cnt
                    if (acc_cnt == 4'd15) begin
                        acc_cnt  <= 4'd0;
                    end else begin
                        acc_cnt  <= acc_cnt + 4'd1;
                    end

                    // tile cnt
                    if (acc_cnt == 4'd15) begin
                        if (tile_cnt == 2'd3) begin
                            // vector finish -> start quantization
                            tile_cnt <= 2'd0;
                        end else begin
                            tile_cnt <= tile_cnt + 2'd1;
                        end
                    end
                end
            endcase
        end
    end


    //////////////
    // datapath //
    //////////////

    // TODO: bias addition, scaling, relu, running max (for each lane)


    ////////////////
    // vsq buffer //
    ////////////////

    assign vsq_buf_we      = (state == S_BUSY) ? 1'b1 : 1'b0;
    assign vsq_buf_addr_wr = acc_cnt + tile_cnt * 16;

    buffer #(
        .VEC_WIDTH ( 640 ),
        .ARR_DEPTH ( 64 )
    ) vsq_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( vsq_buf_we ),
        .i_addr_wr ( vsq_buf_addr_wr ),
        .i_data_wr (  ),    // output from datapath
        .i_addr_rd (  ),    // from quantize.v
        .o_data_rd (  )     // to quantize.v
    );


    //////////////
    // quantize //
    //////////////

    // TODO: int4 quantization after vsq buf filled
    // start -> 16 reciprocal units -> read out vsq buf and quantize


endmodule
