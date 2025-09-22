`include "define.v"

module mac (
    input  [1:0]   i_mode,      // mode = 0: INT8 / 1: INT4 / 2: INT4_VSQ
    input  [23:0]  i_psum,      // partial sum in
    input  [255:0] i_a,         // flattened a vector
    input  [255:0] i_b,         // flattened b vector
    input  [7:0]   i_scale_a,   // a vsq scale factor
    input  [7:0]   i_scale_b,   // b vsq scale factor
    output [23:0]  o_result     // result = partial sum + vector dot product
);


    // gate signals
    wire         int8_gate, int4_gate, vsq_gate;

    // gated b / psum
    wire [255:0] int8_b_gated;
    wire [255:0] int4_b_gated;
    wire [7:0]   scale_b_gated;
    wire [23:0]  int8_psum_gated, int4_psum_gated, vsq_psum_gated;

    // int8 results
    wire [20:0]  int8_product;
    wire [23:0]  int8_result;

    // int4 results
    wire [13:0]  int4_product;
    wire [23:0]  int4_result;

    // vsq datapath
    wire [15:0]  scale_mult_full;
    wire [7:0]   scale_mult_round;
    wire [22:0]  vsq_product;
    wire [23:0]  vsq_result_tmp;
    wire [23:0]  vsq_result;
    wire         vsq_overflow;


    // input gating
    assign int8_gate = (i_mode == `INT8);
    assign int4_gate = (i_mode == `INT4 || i_mode == `INT4_VSQ);
    assign vsq_gate  = (i_mode == `INT4_VSQ);

    assign int8_b_gated    = {256{int8_gate}} & i_b;
    assign int4_b_gated    = {256{int4_gate}} & i_b;
    assign scale_b_gated   = {8{vsq_gate}}    & i_scale_b;
    assign int8_psum_gated = {24{int8_gate}}  & i_psum;
    assign int4_psum_gated = {24{int4_gate}}  & i_psum;
    assign vsq_psum_gated  = {24{vsq_gate}}   & i_psum;


    //////////////
    // int8 mac //
    //////////////

    vec_product #(
        .BIT_WIDTH ( 8 ),
        .VEC_SIZE  ( 32 )
    ) int8_vp (
        .i_a       ( i_a ),
        .i_b       ( int8_b_gated ),
        .o_product ( int8_product )
    );

    assign int8_result = $signed(int8_psum_gated) + $signed(int8_product);      // no saturation


    //////////////
    // int4 mac //
    //////////////

    vec_product #(
        .BIT_WIDTH ( 4 ),
        .VEC_SIZE  ( 64 )
    ) int4_vp (
        .i_a       ( i_a ),
        .i_b       ( int4_b_gated ),
        .o_product ( int4_product )
    );

    assign int4_result = $signed(int4_psum_gated) + $signed(int4_product);      // no saturation


    /////////
    // VSQ //
    /////////

    assign scale_mult_full  = i_scale_a * scale_b_gated;
    assign scale_mult_round = (scale_mult_full + 16'd128) >> 8;                             // rounding
    assign vsq_product      = $signed(int4_product) * $signed({1'b0, scale_mult_round});    // TODO: need to lshift 8 bits back later

    assign vsq_result_tmp   = $signed(vsq_psum_gated) + $signed(vsq_product);
    assign vsq_overflow     = (vsq_psum_gated[23] == vsq_product[22]) && (vsq_result_tmp[23] != vsq_psum_gated[23]);
    assign vsq_result       = (~vsq_overflow)      ? vsq_result_tmp :
                              (vsq_psum_gated[23]) ? {1'b1, 23'd0}  : {1'b0, 23'd1};          // saturation


    // output
    assign o_result = (i_mode == `INT8) ? int8_result :
                      (i_mode == `INT4) ? int4_result : vsq_result;


endmodule
