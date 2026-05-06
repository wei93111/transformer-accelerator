`ifndef DEFINE_V
`define DEFINE_V

    // modes
    `define INT8     0
    `define INT4     1
    `define INT4_VSQ 2


    // sizes
    `define M         128
    `define K         128
    `define N         128
    `define VL        16
    `define AD        16
    `define INT4_VS   64
    `define INT8_VS   32
    `define VSQ_BUF_D 64


    // data width
    `define VEC_W   264
    `define DAT_W   256
    `define SF_W    8
    `define DATA4_W 4
    `define DATA8_W 8

    `define ADDR_W  16
    `define ACC_W   24
    `define FULL_W  40
    `define INT_W   30
    `define FRAC_W  10
    `define SCALE_W 16
    `define BIAS_W  16
    `define TRUNC_W 18
    `define NUMER_W 16
    `define DENOM_W 16

`endif
