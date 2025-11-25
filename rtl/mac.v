`include "define.v"

module mac (
    input  [1         :0] i_mode,
    input  [`ACC_W - 1:0] i_psum,
    input  [`DAT_W - 1:0] i_a_data,
    input  [`DAT_W - 1:0] i_b_data,
    input  [`SF_W  - 1:0] i_a_sf,
    input  [`SF_W  - 1:0] i_b_sf,
    output [`ACC_W - 1:0] o_result
);

    // gate signals
    wire                      int4_gate;
    wire                      int8_gate;
    wire                      vsq_gate;

    // gated b / psum
    wire [`DAT_W       - 1:0] int4_b_gated;
    wire [`DAT_W       - 1:0] int8_b_gated;
    wire [`SF_W        - 1:0] sf_b_gated;
    wire [`ACC_W       - 1:0] int4_psum_gated;
    wire [`ACC_W       - 1:0] int8_psum_gated;
    wire [`ACC_W       - 1:0] vsq_psum_gated;

    // int4 datapath
    wire [`INT4_PROD_W - 1:0] int4_product;
    wire [`ACC_W          :0] int4_res_full;
    wire [`ACC_W       - 1:0] int4_res;

    // int8 datapath
    wire [`INT8_PROD_W - 1:0] int8_product;
    wire [`ACC_W          :0] int8_res_full;
    wire [`ACC_W       - 1:0] int8_res;

    // vsq datapath
    wire [`SF_W * 2    - 1:0] sf_mult;
    wire [`ACC_W       - 1:0] vsq_product;
    wire [`ACC_W          :0] vsq_res_full;
    wire [`ACC_W       - 1:0] vsq_res;


    ////////////
    // gating //
    ////////////

    assign int4_gate       = (i_mode == `INT4 || i_mode == `INT4_VSQ);
    assign int8_gate       = (i_mode == `INT8);
    assign vsq_gate        = (i_mode == `INT4_VSQ);

    assign int4_b_gated    = {`DAT_W{int4_gate}} & i_b_data;
    assign int8_b_gated    = {`DAT_W{int8_gate}} & i_b_data;
    assign sf_b_gated      = {`SF_W{vsq_gate}}   & i_b_sf;
    assign int4_psum_gated = {`ACC_W{int4_gate}} & i_psum;
    assign int8_psum_gated = {`ACC_W{int8_gate}} & i_psum;
    assign vsq_psum_gated  = {`ACC_W{vsq_gate}}  & i_psum;


    //////////////
    // int4 mac //
    //////////////

    vec_product #(
        .DATA_W ( `INT4_DATA_W ),
        .RES_W  ( `INT4_PROD_W ),
        .VS     ( `INT4_VS )
    ) int4_vp (
        .i_a       ( i_a_data ),
        .i_b       ( int4_b_gated ),
        .o_product ( int4_product )
    );

    assign int4_res_full = $signed(int4_psum_gated) + $signed(int4_product);
    assign int4_res      = saturate(int4_res_full);


    //////////////
    // int8 mac //
    //////////////

    vec_product #(
        .DATA_W ( `INT8_DATA_W ),
        .RES_W  ( `INT8_PROD_W ),
        .VS     ( `INT8_VS )
    ) int8_vp (
        .i_a       ( i_a_data ),
        .i_b       ( int8_b_gated ),
        .o_product ( int8_product )
    );

    assign int8_res_full = $signed(int8_psum_gated) + $signed(int8_product);
    assign int8_res      = saturate(int8_res_full);


    /////////
    // VSQ //
    /////////

    assign sf_mult      = i_a_sf * sf_b_gated;
    assign vsq_product  = $signed(int4_product) * $signed({1'b0, sf_mult});
    assign vsq_res_full = $signed(vsq_psum_gated) + $signed(vsq_product);
    assign vsq_res      = saturate(vsq_res_full);


    function automatic [`ACC_W - 1:0] saturate;
        input [`ACC_W :0] data;

        reg [`ACC_W    :0] data_abs;
        reg [`ACC_W - 1:0] data_abs_sat;
        
        begin
            data_abs     = (data[`ACC_W]) ? ~data + 1 : data;
            data_abs_sat = (data_abs > {(`ACC_W - 1){1'b1}}) ? {1'b0, {(`ACC_W - 1){1'b1}}} : data_abs[`ACC_W - 1:0];
            saturate     = (data[`ACC_W]) ? ~data_abs_sat + 1 : data_abs_sat;
        end
    endfunction


    // output
    assign o_result = (i_mode == `INT8) ? int8_res :
                      (i_mode == `INT4) ? int4_res : vsq_res;

endmodule
