`include "define.vh"

module mm_ctrl #(
    parameter VS = 64,
    parameter VL = 16,
    parameter AD = 16,
    parameter M  = 512,
    parameter K  = 256,
    parameter N  = 512
)(
    input        i_clk,
    input        i_rst_n,
    input  [1:0] i_mode,    // mode = 0: INT8 / 1: INT4 / 2: INT4_VSQ
    input        i_start,   // start signal
    output       o_done     // finish signal (tb check accumulator)
);

    genvar gi;


    ///////////////
    // A buffers //
    ///////////////

    generate
        for (gi = 0; gi < 4; gi = gi + 1) begin: A_BUFFER
            ram #(
                .VEC_WIDTH (264),
                .ARR_DEPTH (128)
            ) ram_a (
                .i_clk   (i_clk),
                .i_rst_n (1'b1),    // no reset for mem
                .i_we    (1'b0),    // no write
                .i_addr  (),
                .i_data  (264'd0),  // no write
                .o_data  ()
            );
        end
    endgenerate


    //////////////
    // B buffer //
    //////////////

    ram #(
        .VEC_WIDTH (264),
        .ARR_DEPTH (2048)
    ) ram_b (
        .i_clk   (i_clk),
        .i_rst_n (1'b1),    // no reset for mem
        .i_we    (1'b0),    // no write
        .i_addr  (),
        .i_data  (264'd0),  // no write
        .o_data  ()
    );
    

    /////////////////
    // accumulator //
    /////////////////

    accumulator #(
        .VEC_WIDTH (384),
        .ARR_DEPTH (16)
    ) acc (
        .i_clk     (i_clk),
        .i_rst_n   (i_rst_n),
        .i_we      (),
        .i_addr_wr (),
        .i_data_wr (),
        .i_addr_rd (),
        .o_data_rd ()
    );


endmodule
