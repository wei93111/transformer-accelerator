`include "define.v"

module top (
    input                         i_clk,
    input                         i_rst_n,

    // ctrl in
    input  [1                 :0] i_mode,
    input                         i_relu_en,
    input                         i_start,

    // input ram
    input  [`VEC_W * `VL   - 1:0] i_a_data,
    input  [`VEC_W         - 1:0] i_b_data,
    output [`ADDR_W        - 1:0] o_a_addr,
    output [`ADDR_W        - 1:0] o_b_addr,

    // output ram
    output                        o_out_we,
    output [`DATA8_W * `VL - 1:0] o_out_data,
    output [`ADDR_W        - 1:0] o_out_addr,

    // sf out
    output [`TRUNC_W * `VL - 1:0] o_sf_vsq,
    output [`TRUNC_W       - 1:0] o_sf_int4,
    output [`TRUNC_W       - 1:0] o_sf_int8,

    // softmax out
    output [8  * 16        - 1:0] o_softmax_y,
    output [30 * 16        - 1:0] o_softmax_runmax,
    output [16 * 16        - 1:0] o_softmax_denom,
    output                        o_softmax_y_valid,
    output                        o_softmax_denom_valid,

    // finish
    output                        o_tile_done,
    output                        o_mtrx_done,
    output                        o_vec_done,
    output                        o_finish
);

    // interface
    wire                      ppu_start;
    wire [`ACC_W * `VL - 1:0] acc_data;
    wire [1               :0] mode;


    // mm_ctrl
    mm_ctrl u_mm_ctrl (
        .i_clk       ( i_clk ),
        .i_rst_n     ( i_rst_n ),

        .i_mode      ( i_mode ),
        .i_start     ( i_start ),

        .i_a_data    ( i_a_data ),
        .i_b_data    ( i_b_data ),
        .o_a_addr    ( o_a_addr ),
        .o_b_addr    ( o_b_addr ),

        .o_ppu_start ( ppu_start ),
        .o_acc_data  ( acc_data ),
        .o_mode      ( mode ),

        .o_tile_done ( o_tile_done ),
        .o_mtrx_done ( o_mtrx_done )
    );


    // ppu
    ppu u_ppu (
        .i_clk                 ( i_clk ),
        .i_rst_n               ( i_rst_n ),

        .i_ppu_start           ( ppu_start ),
        .i_acc_data            ( acc_data ),
        .i_mode                ( mode ),
        .i_relu_en             ( i_relu_en ),

        .o_out_we              ( o_out_we ),
        .o_out_data            ( o_out_data ),
        .o_out_addr            ( o_out_addr ),

        .o_sf_vsq              ( o_sf_vsq ),
        .o_sf_int4             ( o_sf_int4 ),
        .o_sf_int8             ( o_sf_int8 ),

        .o_softmax_y           ( o_softmax_y ),
        .o_softmax_runmax      ( o_softmax_runmax ),
        .o_softmax_denom       ( o_softmax_denom ),
        .o_softmax_y_valid     ( o_softmax_y_valid ),
        .o_softmax_denom_valid ( o_softmax_denom_valid ),

        .o_vec_done            ( o_vec_done ),
        .o_finish              ( o_finish )
    );

endmodule
