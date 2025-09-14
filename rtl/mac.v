`include "define.vh"

module mac(
    input  [1:0]   i_mode,      // mode = 0: INT8 / 1: INT4 / 2: INT4_VSQ
    input  [23:0]  i_psum,      // partial sum in
    input  [255:0] i_a,         // flattened a vector
    input  [255:0] i_b,         // flattened b vector
    input  [7:0]   i_vsq_a,     // a vsq scale factor
    input  [7:0]   i_vsq_b,     // b vsq scale factor
    output [23:0]  o_result     // result = partial sum + vector dot product
);


// input gating
wire int8_gate, int4_gate, vsq_gate;

assign int8_gate = (i_mode == `INT8);
assign int4_gate = (i_mode == `INT4 || i_mode == `INT4_VSQ);
assign vsq_gate  = (i_mode == `INT4_VSQ);

wire [255:0] int8_b_gated, int4_b_gated;
wire [7:0]   vsq_b_gated;
wire [23:0]  int8_psum_gated, int4_psum_gated, vsq_psum_gated;

assign int8_b_gated    = {256{int8_gate}} & i_b;
assign int4_b_gated    = {256{int4_gate}} & i_b;
assign vsq_b_gated     = {8{vsq_gate}}    & i_vsq_b;
assign int8_psum_gated = {24{int8_gate}}  & i_psum;
assign int4_psum_gated = {24{int4_gate}}  & i_psum;
assign vsq_psum_gated  = {24{vsq_gate}}   & i_psum;


//////////////
// int8 mac //
//////////////

wire [20:0] int8_product;
wire [23:0] int8_result;

vec_product #(
    .BIT_WIDTH (8),
    .VEC_SIZE  (32)
) int8_vp (
    .i_a       (i_a),
    .i_b       (int8_b_gated),
    .o_product (int8_product)
);

assign int8_result = $signed(int8_psum_gated) + $signed(int8_product);


//////////////
// int4 mac //
//////////////

wire [13:0] int4_product;
wire [23:0] int4_result;

vec_product #(
    .BIT_WIDTH (4),
    .VEC_SIZE  (64)
) int4_vp (
    .i_a       (i_a),
    .i_b       (int4_b_gated),
    .o_product (int4_product)
);

assign int4_result = $signed(int4_psum_gated) + $signed(int4_product);


/////////
// VSQ //
/////////

wire [15:0] vsq_mult_full;
wire [7:0]  vsq_mult_round;
wire [21:0] vsq_product;

wire [24:0] vsq_result_full;
wire [23:0] vsq_result;

assign vsq_mult_full   = $signed(i_vsq_a) * $signed(vsq_b_gated);
assign vsq_mult_round  = vsq_mult_full[15:8];       // TODO: use rounding instead of truncation
assign vsq_product     = $signed(int4_product) * $signed(vsq_mult_round);

assign vsq_result_full = $signed(vsq_psum_gated) + $signed(vsq_product);
assign vsq_result      = (vsq_result_full[24]) ? 24'hFFFFFF : vsq_result_full[23:0];    // TODO: output saturation


// output
assign o_result = (i_mode == `INT8) ? int8_result :
                  (i_mode == `INT4) ? int4_result : vsq_result;


endmodule
