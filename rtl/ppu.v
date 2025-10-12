module ppu (
    input          i_clk,
    input          i_rst_n,
    input          i_ppu_start,     // ppu start signal
    input  [383:0] i_acc_data,      // accumulator data
    output         o_ram_we,        // ram write enable
    output [15:0]  o_ram_data,      // ram data
    output [12:0]  o_ram_addr       // ram address
);

    genvar gi;


    // states
    localparam S_IDLE = 1'b0;
    localparam S_BUSY = 1'b1;


    // state ctrl
    reg         state;
    reg  [3:0]  acc_cnt;
    reg  [1:0]  tile_cnt;

    // scaling
    reg  [3:0]   scale_addr;
    wire [255:0] scale_data;
    wire [639:0] scale_res;     // Q32.6 x 16 entries

    // bias add
    reg  [3:0]   bias_addr;
    wire [15:0]  bias_data;
    wire [639:0] bias_res;      // Q32.6 x 16 entries

    // relu
    wire [639:0] relu_res;      // Q32.6 x 16 entries

    // vsq buffer
    wire         vsq_buf_we;
    wire [5:0]   vsq_buf_addr_wr;

    // ram interface (TODO: write to output ram)
    reg          ram_we;
    reg  [15:0]  ram_data;
    reg  [12:0]  ram_addr;


    assign o_ram_we   = ram_we;
    assign o_ram_data = ram_data;
    assign o_ram_addr = ram_addr;


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


    /////////////
    // scaling //
    /////////////

    assign scale_addr = acc_cnt;

    buffer #(
        .VEC_WIDTH ( 256 ),     // Q6.10 x 16 entries
        .ARR_DEPTH ( 16 )
    ) scale_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( 1'b0 ),
        .i_addr_wr ( 7'd0 ),
        .i_data_wr ( 8'd0 ),
        .i_addr_rd ( scale_addr ),
        .o_data_rd ( scale_data )
    );

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: SCALE_MULT
            assign scale_res[gi*40 +: 40] = $signed(scale_data[gi*16 +: 16]) * $signed(i_acc_data[gi*24 +: 24]);
        end
    endgenerate


    //////////////
    // bias add //
    //////////////

    assign bias_addr = acc_cnt;

    buffer #(
        .VEC_WIDTH ( 16 ),      // Q6.10, same for each lane
        .ARR_DEPTH ( 16 )
    ) bias_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( 1'b0 ),
        .i_addr_wr ( 7'd0 ),
        .i_data_wr ( 8'd0 ),
        .i_addr_rd ( bias_addr ),
        .o_data_rd ( bias_data )
    );

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: BIAS_ADD
            assign bias_res[gi*40 +: 40] = $signed(bias_data) + $signed(scale_res[gi*40 +: 40]);
        end
    endgenerate


    //////////
    // relu //
    //////////

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: RELU
            assign relu_res[gi*40 +: 40] = ($signed(bias_res[gi*40 +: 40]) > 40'sd0) ? bias_res[gi*40 +: 40] : 40'd0;
        end
    endgenerate


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
        .i_data_wr ( relu_res ),
        .i_addr_rd (  ),    // from quantize.v
        .o_data_rd (  )     // to quantize.v
    );


    //////////////
    // quantize //
    //////////////

    // TODO: int4 quantization after vsq buf filled
    // keep running max for 16 lanes
    // start -> 16 reciprocal units -> read out vsq buf and quantize


endmodule
