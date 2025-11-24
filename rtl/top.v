module top (
    input                  i_clk,
    input                  i_rst_n,
    input  [1:0]           i_mode,
    input                  i_relu_en,
    input                  i_start,

    output [18 * 16 - 1:0] o_sf_data,
    output                 o_sf_valid,

    output [8  * 16 - 1:0] o_softmax_y,
    output [30 * 16 - 1:0] o_softmax_runmax,
    output [16 * 16 - 1:0] o_softmax_denom,
    output                 o_softmax_y_valid,
    output                 o_softmax_denom_valid,

    output                 o_done
);

    // ppu - mm_ctrl interface
    wire                 ppu_start;
    wire [24 * 16 - 1:0] acc_data;      // INT24 x 16 entries
    wire [1:0]           mode;

    // ppu - output buffer interface
    wire                 ram_we;
    wire [4 * 16 - 1:0]  ram_data;      // INT4 x 16 entries
    wire [5:0]           ram_addr;


    // mm_ctrl
    mm_ctrl u_mm_ctrl (
        .i_clk       ( i_clk ),
        .i_rst_n     ( i_rst_n ),

        .i_mode      ( i_mode ),
        .i_start     ( i_start ),

        .o_tile_done ( ),
        .o_mtrx_done ( o_done ),

        .o_ppu_start ( ppu_start ),
        .o_acc_data  ( acc_data ),
        .o_mode      ( mode ),
    );


    // ppu
    ppu u_ppu (
        .i_clk                 ( i_clk ),
        .i_rst_n               ( i_rst_n ),

        .i_ppu_start           ( ppu_start ),
        .i_acc_data            ( acc_data ),
        .i_mode                ( mode ),
        .i_relu_en             ( i_relu_en ),

        .o_ram_we              ( ram_we ),
        .o_ram_data            ( ram_data ),
        .o_ram_addr            ( ram_addr ),

        .o_sf_data             ( o_sf_data ),
        .o_sf_valid            ( o_sf_valid ),

        .o_softmax_y           ( o_softmax_y ),
        .o_softmax_runmax      ( o_softmax_runmax ),
        .o_softmax_denom       ( o_softmax_denom ),
        .o_softmax_y_valid     ( o_softmax_y_valid ),
        .o_softmax_denom_valid ( o_softmax_denom_valid )
    );


    // output buffer
    ram #(
        .VEC_WIDTH ( 4 * 16 ),   // INT4 x 16 entries
        .ARR_DEPTH ( 64 )        // 64 cols (full vector)
    ) u_ram (
        .i_clk   ( i_clk ),
        .i_rst_n ( i_rst_n ),
        .i_we    ( ram_we ),
        .i_addr  ( ram_addr ),
        .i_data  ( ram_data ),
        .o_data  ( 64'd0 )
    );

endmodule
