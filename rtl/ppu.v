module ppu (
    input              i_clk,
    input              i_rst_n,
    input              i_ppu_start,     // ppu start signal
    input  [24*16-1:0] i_acc_data,      // accumulator data

    output             o_ram_we,        // ram write enable
    output [4*16-1:0]  o_ram_data,      // ram data
    output [5:0]       o_ram_addr,      // ram address

    output             o_sf_valid,
    output [40*16-1:0] o_sf_data,

    output             o_softmax_finish,
    output [9*16-1:0]  o_softmax_denom,
    output [4*16-1:0]  o_softmax_runmax
);

    genvar gi;


    // states
    localparam S_IDLE = 1'b0;
    localparam S_BUSY = 1'b1;


    // state ctrl
    reg              state;
    reg  [3:0]       acc_cnt;
    reg  [1:0]       tile_cnt;

    // scaling
    wire [3:0]       scale_addr;
    wire [16*16-1:0] scale_data;
    wire [40*16-1:0] scale_res;         // Q30.10 x 16 entries

    // bias add
    wire [3:0]       bias_addr;
    wire [15:0]      bias_data;
    wire [40*16-1:0] bias_res;          // Q30.10 x 16 entries

    // relu
    wire [40*16-1:0] relu_res;          // Q30.10 x 16 entries

    // vsq buffer
    wire             vsq_buf_we;
    wire [5:0]       vsq_buf_addr_wr;
    wire [5:0]       vsq_buf_addr_rd;
    wire [40*16-1:0] vsq_buf_data_wr;
    wire [40*16-1:0] vsq_buf_data_rd;   // no truncation

    // quantize ctrl
    reg              quant_start;

    // softmax ctrl
    reg              softmax_valid;


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
                            // vector finish
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

    // scaling
    assign scale_addr = acc_cnt;

    buffer #(
        .VEC_WIDTH ( 16*16 ),   // Q6.10 x 16 entries
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
    assign bias_addr = acc_cnt;

    buffer #(
        .VEC_WIDTH ( 16 ),      // Q6.10, same for each lane
        .ARR_DEPTH ( 16 )
    ) bias_buf (
        .i_clk     ( i_clk ),
        .i_rst_n   ( 1'b1 ),
        .i_we      ( 1'b0 ),
        .i_addr_wr ( 4'd0 ),
        .i_data_wr ( 16'd0 ),
        .i_addr_rd ( bias_addr ),
        .o_data_rd ( bias_data )
    );

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: BIAS_ADD
            assign bias_res[gi*40 +: 40] = $signed(bias_data) + $signed(scale_res[gi*40 +: 40]);
        end
    endgenerate


    // relu
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
    assign vsq_buf_data_wr = relu_res;

    buffer #(
        .VEC_WIDTH ( 40*16 ),
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

    // quant start signal
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            quant_start <= 1'b0;
        end else if (tile_cnt == 2'd3 && acc_cnt == (4'd15 - 4'd1)) begin
            // pull high one cycle earlier
            quant_start <= 1'b1;
        end else begin
            quant_start <= 1'b0;
        end
    end

    quantize quant (
        .i_clk      ( i_clk ),
        .i_rst_n    ( i_rst_n ),
        .i_start    ( quant_start ),
        .i_data     ( relu_res ),

        // to vsq buffer
        .i_buf_data ( vsq_buf_data_rd ),
        .o_buf_addr ( vsq_buf_addr_rd ),

        // to output ram
        .o_ram_we   ( o_ram_we ),
        .o_ram_data ( o_ram_data ),
        .o_ram_addr ( o_ram_addr ),

        // output sf
        .o_sf_valid ( o_sf_valid ),
        .o_sf_data  ( o_sf_data )
    );


    /////////////
    // softmax //
    /////////////

    softmax softmax (
        .i_clk    ( i_clk ),
        .i_rst_n  ( i_rst_n ),
        .i_start  ( i_ppu_start ),
        .i_data   ( relu_res ),
        .o_finish ( o_softmax_finish ),
        .o_denom  ( o_softmax_denom ),
        .o_runmax ( o_softmax_runmax ),
        .o_y_data ( )
    );

endmodule
