`ifndef DEFINE_V
`define DEFINE_V

    // operation modes
    `define INT8     0
    `define INT4     1
    `define INT4_VSQ 2

    // matrix size
    `define M       64
    `define K       64
    `define N       64

    `define VL      16
    `define AD      16
    `define INT4_VS 64
    `define INT8_VS 32

    // data width
    `define DATA4_W 4
    `define DATA8_W 8
    `define PROD4_W 14
    `define PROD8_W 21

    `define ADDR_W  16
    `define ACC_W   24
    `define TRUNC_W 18

    `define VEC_W   264
    `define DAT_W   256
    `define SF_W    8

`endif
