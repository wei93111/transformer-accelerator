`include "define.v"

module mac (
    input                 i_clk,
    input                 i_rst_n,
    input  [1         :0] i_mode,
    input  [`ACC_W - 1:0] i_psum,
    input  [`DAT_W - 1:0] i_a_data,
    input  [`DAT_W - 1:0] i_b_data,
    input  [`SF_W  - 1:0] i_a_sf,
    input  [`SF_W  - 1:0] i_b_sf,
    output [`ACC_W - 1:0] o_result
);

    integer i;


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
    reg  [`DATA4_W * 2 - 1:0] int4_mult        [0:`INT4_VS      - 1];
    reg  [`DATA4_W * 2 + 0:0] int4_sum0        [0:`INT4_VS / 2  - 1];
    reg  [`DATA4_W * 2 + 1:0] int4_sum1_w      [0:`INT4_VS / 4  - 1];
    reg  [`DATA4_W * 2 + 1:0] int4_sum1_r      [0:`INT4_VS / 4  - 1];
    reg  [`DATA4_W * 2 + 2:0] int4_sum2        [0:`INT4_VS / 8  - 1];
    reg  [`DATA4_W * 2 + 3:0] int4_sum3        [0:`INT4_VS / 16 - 1];
    reg  [`DATA4_W * 2 + 4:0] int4_sum4        [0:`INT4_VS / 32 - 1];
    reg  [`DATA4_W * 2 + 5:0] int4_sum5        [0:`INT4_VS / 64 - 1];

    reg  [`DATA4_W * 2 + 5:0] int4_product_w,  int4_product_r;
    reg  [`ACC_W       - 1:0] int4_res_w,      int4_res_r;
    reg  [`ACC_W       - 1:0] int4_res_pl3_w,  int4_res_pl3_r;
    reg  [`ACC_W          :0] int4_res_full;

    reg  [`ACC_W       - 1:0] int4_psum_pl0_w, int4_psum_pl0_r;
    reg  [`ACC_W       - 1:0] int4_psum_pl1_w, int4_psum_pl1_r;

    // int8 datapath
    reg  [`DATA8_W * 2 - 1:0] int8_mult        [0:`INT8_VS      - 1];
    reg  [`DATA8_W * 2 + 0:0] int8_sum0_w      [0:`INT8_VS / 2  - 1];
    reg  [`DATA8_W * 2 + 0:0] int8_sum0_r      [0:`INT8_VS / 2  - 1];
    reg  [`DATA8_W * 2 + 1:0] int8_sum1        [0:`INT8_VS / 4  - 1];
    reg  [`DATA8_W * 2 + 2:0] int8_sum2_w      [0:`INT8_VS / 8  - 1];
    reg  [`DATA8_W * 2 + 2:0] int8_sum2_r      [0:`INT8_VS / 8  - 1];
    reg  [`DATA8_W * 2 + 3:0] int8_sum3        [0:`INT8_VS / 16 - 1];
    reg  [`DATA8_W * 2 + 4:0] int8_sum4        [0:`INT8_VS / 32 - 1];

    reg  [`DATA8_W * 2 + 4:0] int8_product_w,  int8_product_r;
    reg  [`ACC_W       - 1:0] int8_res_w,      int8_res_r;
    reg  [`ACC_W          :0] int8_res_full;

    reg  [`ACC_W       - 1:0] int8_psum_pl0_w, int8_psum_pl0_r;
    reg  [`ACC_W       - 1:0] int8_psum_pl1_w, int8_psum_pl1_r;
    reg  [`ACC_W       - 1:0] int8_psum_pl2_w, int8_psum_pl2_r;

    // vsq datapath
    reg  [`ACC_W       - 1:0] vsq_product_w,   vsq_product_r;
    reg  [`ACC_W       - 1:0] vsq_res_w,       vsq_res_r;
    reg  [`ACC_W          :0] vsq_res_full;

    reg  [`SF_W * 2    - 1:0] sf_mult_pl0_w,   sf_mult_pl0_r;
    reg  [`SF_W * 2    - 1:0] sf_mult_pl1_w,   sf_mult_pl1_r;

    reg  [`ACC_W       - 1:0] vsq_psum_pl0_w,  vsq_psum_pl0_r;
    reg  [`ACC_W       - 1:0] vsq_psum_pl1_w,  vsq_psum_pl1_r;
    reg  [`ACC_W       - 1:0] vsq_psum_pl2_w,  vsq_psum_pl2_r;


    assign o_result = (i_mode == `INT8) ? int8_res_r     :
                      (i_mode == `INT4) ? int4_res_pl3_r : vsq_res_r;


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

    always @(*) begin
        // stage 0
        for (i = 0; i < `INT4_VS; i = i + 1) begin
            int4_mult[i] = $signed(i_a_data[i * `DATA4_W +: `DATA4_W]) * $signed(int4_b_gated[i * `DATA4_W +: `DATA4_W]);
        end

        for (i = 0; i < `INT4_VS / 2; i = i + 1) begin
            int4_sum0[i] = $signed(int4_mult[2 * i]) + $signed(int4_mult[2 * i + 1]);
        end

        for (i = 0; i < `INT4_VS / 4; i = i + 1) begin
            int4_sum1_w[i] = $signed(int4_sum0[2 * i]) + $signed(int4_sum0[2 * i + 1]);
        end

        int4_psum_pl0_w = int4_psum_gated;

        // stage 1
        for (i = 0; i < `INT4_VS / 8; i = i + 1) begin
            int4_sum2[i] = $signed(int4_sum1_r[2 * i]) + $signed(int4_sum1_r[2 * i + 1]);
        end

        for (i = 0; i < `INT4_VS / 16; i = i + 1) begin
            int4_sum3[i] = $signed(int4_sum2[2 * i]) + $signed(int4_sum2[2 * i + 1]);
        end
        
        for (i = 0; i < `INT4_VS / 32; i = i + 1) begin
            int4_sum4[i] = $signed(int4_sum3[2 * i]) + $signed(int4_sum3[2 * i + 1]);
        end

        for (i = 0; i < `INT4_VS / 64; i = i + 1) begin
            int4_sum5[i] = $signed(int4_sum4[2 * i]) + $signed(int4_sum4[2 * i + 1]);
        end

        int4_product_w  = int4_sum5[0];
        int4_psum_pl1_w = int4_psum_pl0_r;

        // stage 2
        int4_res_full   = $signed(int4_psum_pl1_r) + $signed(int4_product_r);
        int4_res_w      = saturate(int4_res_full);

        // stage 3
        int4_res_pl3_w  = int4_res_r;
    end


    //////////////
    // int8 mac //
    //////////////

    always @(*) begin
        // stage 0
        for (i = 0; i < `INT8_VS; i = i + 1) begin
            int8_mult[i] = $signed(i_a_data[i * `DATA8_W +: `DATA8_W]) * $signed(int8_b_gated[i * `DATA8_W +: `DATA8_W]);
        end

        for (i = 0; i < `INT8_VS / 2; i = i + 1) begin
            int8_sum0_w[i] = $signed(int8_mult[2 * i]) + $signed(int8_mult[2 * i + 1]);
        end

        int8_psum_pl0_w = int8_psum_gated;

        // stage 1
        for (i = 0; i < `INT8_VS / 4; i = i + 1) begin
            int8_sum1[i] = $signed(int8_sum0_r[2 * i]) + $signed(int8_sum0_r[2 * i + 1]);
        end

        for (i = 0; i < `INT8_VS / 8; i = i + 1) begin
            int8_sum2_w[i] = $signed(int8_sum1[2 * i]) + $signed(int8_sum1[2 * i + 1]);
        end

        int8_psum_pl1_w = int8_psum_pl0_r;

        // stage 2
        for (i = 0; i < `INT8_VS / 16; i = i + 1) begin
            int8_sum3[i] = $signed(int8_sum2_r[2 * i]) + $signed(int8_sum2_r[2 * i + 1]);
        end
        
        for (i = 0; i < `INT8_VS / 32; i = i + 1) begin
            int8_sum4[i] = $signed(int8_sum3[2 * i]) + $signed(int8_sum3[2 * i + 1]);
        end

        int8_product_w  = int8_sum4[0];
        int8_psum_pl2_w = int8_psum_pl1_r;

        // stage 3
        int8_res_full   = $signed(int8_psum_pl2_r) + $signed(int8_product_r);
        int8_res_w      = saturate(int8_res_full);
    end


    /////////
    // VSQ //
    /////////

    always @(*) begin
        // stage 0
        sf_mult_pl0_w  = i_a_sf * sf_b_gated;
        vsq_psum_pl0_w = vsq_psum_gated;

        // stage 1
        sf_mult_pl1_w  = sf_mult_pl0_r;
        vsq_psum_pl1_w = vsq_psum_pl0_r;

        // stage 2
        vsq_product_w  = $signed({1'b0, sf_mult_pl1_r[7:0]}) * $signed(int4_product_r);
        vsq_psum_pl2_w = vsq_psum_pl1_r;

        // stage 3
        vsq_res_full   = $signed(vsq_psum_pl2_r) + $signed(vsq_product_r);
        vsq_res_w      = saturate(vsq_res_full);
    end


    function automatic [`ACC_W - 1:0] saturate;
        input [`ACC_W :0] data;

        reg [`ACC_W    :0] data_abs;
        reg [`ACC_W - 1:0] data_abs_sat;
        
        begin
            data_abs     = (data[`ACC_W]) ? ~data + 1 : data;
            data_abs_sat = (data_abs[`ACC_W - 1]) ? {1'b0, {(`ACC_W - 1){1'b1}}} : data_abs[`ACC_W - 1:0];
            saturate     = (data[`ACC_W]) ? ~data_abs_sat + 1 : data_abs_sat;
        end
    endfunction


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < `INT4_VS / 4; i = i + 1) int4_sum1_r[i] <= 0;
            int4_product_r  <= 0;
            int4_res_r      <= 0;
            int4_res_pl3_r  <= 0;
            int4_psum_pl0_r <= 0;
            int4_psum_pl1_r <= 0;

            for (i = 0; i < `INT8_VS / 2; i = i + 1) int8_sum0_r[i] <= 0;
            for (i = 0; i < `INT8_VS / 8; i = i + 1) int8_sum2_r[i] <= 0;
            int8_product_r  <= 0;
            int8_res_r      <= 0;
            int8_psum_pl0_r <= 0;
            int8_psum_pl1_r <= 0;
            int8_psum_pl2_r <= 0;

            vsq_product_r   <= 0;
            vsq_res_r       <= 0;
            sf_mult_pl0_r   <= 0;
            sf_mult_pl1_r   <= 0;
            vsq_psum_pl0_r  <= 0;
            vsq_psum_pl1_r  <= 0;
            vsq_psum_pl2_r  <= 0;
        end else begin
            for (i = 0; i < `INT4_VS / 4; i = i + 1) int4_sum1_r[i] <= int4_sum1_w[i];
            int4_product_r  <= int4_product_w;
            int4_res_r      <= int4_res_w;
            int4_res_pl3_r  <= int4_res_pl3_w;
            int4_psum_pl0_r <= int4_psum_pl0_w;
            int4_psum_pl1_r <= int4_psum_pl1_w;

            for (i = 0; i < `INT8_VS / 2; i = i + 1) int8_sum0_r[i] <= int8_sum0_w[i];
            for (i = 0; i < `INT8_VS / 8; i = i + 1) int8_sum2_r[i] <= int8_sum2_w[i];
            int8_product_r  <= int8_product_w;
            int8_res_r      <= int8_res_w;
            int8_psum_pl0_r <= int8_psum_pl0_w;
            int8_psum_pl1_r <= int8_psum_pl1_w;
            int8_psum_pl2_r <= int8_psum_pl2_w;

            vsq_product_r   <= vsq_product_w;
            vsq_res_r       <= vsq_res_w;
            sf_mult_pl0_r   <= sf_mult_pl0_w;
            sf_mult_pl1_r   <= sf_mult_pl1_w;
            vsq_psum_pl0_r  <= vsq_psum_pl0_w;
            vsq_psum_pl1_r  <= vsq_psum_pl1_w;
            vsq_psum_pl2_r  <= vsq_psum_pl2_w;
        end
    end

endmodule
