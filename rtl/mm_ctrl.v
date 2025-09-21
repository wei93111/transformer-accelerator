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
    output       o_done     // TODO: finish signal
);

    genvar gi;


    // capture mode at start
    reg [1:0] mode;

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            mode <= 0;
        end else if (i_start) begin
            mode <= i_mode;
        end
    end


    ///////////////
    // A buffers //
    ///////////////

    reg  [6:0] ram_a_addr;                  // TODO: addr gen

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: A_BUF
            wire [263:0] ram_a_data;        // for each lane

            ram #(
                .VEC_WIDTH ( 264 ),
                .ARR_DEPTH ( 128 )
            ) ram_a (
                .i_clk   ( i_clk ),
                .i_rst_n ( 1'b1 ),          // dont reset
                .i_we    ( 1'b0 ),          // no write
                .i_addr  ( ram_a_addr ),
                .i_data  ( 264'd0 ),
                .o_data  ( ram_a_data )
            );
        end
    endgenerate


    //////////////
    // B buffer //
    //////////////

    reg  [10:0]  ram_b_addr;        // TODO: addr gen
    wire [263:0] ram_b_data;

    ram #(
        .VEC_WIDTH ( 264 ),
        .ARR_DEPTH ( 2048 )
    ) ram_b (
        .i_clk   ( i_clk ),
        .i_rst_n ( 1'b1 ),          // dont reset
        .i_we    ( 1'b0 ),          // no write
        .i_addr  ( ram_b_addr ),
        .i_data  ( 264'd0 ),
        .o_data  ( ram_b_data )
    );
    

    ///////////////
    // mac units //
    ///////////////

    wire [255:0] b       = ram_b_data[263:8];
    wire [7:0]   scale_b = ram_b_data[7:0];
    wire [383:0] mac_res;

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: MAC_UNIT
            wire [255:0] a       = A_BUF[gi].ram_a_data[263:8];
            wire [7:0]   scale_a = A_BUF[gi].ram_a_data[7:0];
            mac mac_unit (
                .i_mode    ( mode ),
                .i_psum    ( acc_data[gi*24 +: 24] ),
                .i_a       ( a ),
                .i_b       ( b ),
                .i_scale_a ( scale_a ),
                .i_scale_b ( scale_b ),
                .o_result  ( mac_res[gi*24 +: 24] )
            );
        end
    endgenerate


    /////////////////
    // accumulator //
    /////////////////

    reg          acc_we;    // TODO: control acc we
    reg  [3:0]   acc_addr;  // TODO: control acc addr
    wire [383:0] acc_data;

    accumulator #(
        .VEC_WIDTH (384),
        .ARR_DEPTH (16)
    ) acc (
        .i_clk     ( i_clk ),
        .i_rst_n   ( i_rst_n ),
        .i_we      ( acc_we ),
        .i_addr_wr ( acc_addr ),
        .i_data_wr ( mac_res ),
        .i_addr_rd ( acc_addr ),
        .o_data_rd ( acc_data )
    );


endmodule
