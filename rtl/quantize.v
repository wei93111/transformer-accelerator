`include "define.v"

module quantize (
    input                         i_clk,
    input                         i_rst_n,

    // ctrl in
    input                         i_start,
    input                         i_max_done,
    input  [1                 :0] i_mode,
    input  [`TRUNC_W * `VL - 1:0] i_data,
    input                         i_valid,

    // vsq buffer
    input  [`TRUNC_W * `VL - 1:0] i_buf_data,
    output [`ADDR_W        - 1:0] o_buf_addr,

    // output ram
    output                        o_out_we,
    output [`DATA8_W * `VL - 1:0] o_out_data,
    output [`ADDR_W        - 1:0] o_out_addr,

    // sf out
    output [`TRUNC_W * `VL - 1:0] o_sf_vsq,
    output [`TRUNC_W       - 1:0] o_sf_int4,
    output [`TRUNC_W       - 1:0] o_sf_int8,

    // finish
    output                        o_vec_done,
    output                        o_finish
);

    integer i;
    genvar gi;


    // states
    localparam S_IDLE    = 2'd0;
    localparam S_WAIT    = 2'd1;
    localparam S_COMPARE = 2'd2;
    localparam S_QUANT   = 2'd3;

    // constants
    localparam INT4_NORM = 16'b0010_0100_1001_0010;     // 1/7   in Q0.16
    localparam INT8_NORM = 16'b0000_0010_0000_0100;     // 1/127 in Q0.16


    // ctrl
    reg  [1                     :0] state_w,        state_r;
    reg  [`ADDR_W            - 1:0] vsq_cnt_w,      vsq_cnt_r;
    reg  [`ADDR_W            - 1:0] col_cnt_w,      col_cnt_r;
    reg  [`ADDR_W            - 1:0] max_cnt_w,      max_cnt_r;
    reg                             vec_done_w,     vec_done_r;
    reg                             finish_w,       finish_r;

    // max
    reg  [`TRUNC_W           - 1:0] run_max_w       [0:`VL - 1];
    reg  [`TRUNC_W           - 1:0] run_max_r       [0:`VL - 1];
    reg  [`TRUNC_W           - 1:0] vec_max_w       [0:`VL - 1];
    reg  [`TRUNC_W           - 1:0] vec_max_r       [0:`VL - 1];
    reg  [`TRUNC_W           - 1:0] mtrx_max_w;
    reg  [`TRUNC_W           - 1:0] mtrx_max_r;

    // scale factors
    reg  [`TRUNC_W * `VL     - 1:0] sf_vsq_w,       sf_vsq_r;
    reg  [`TRUNC_W           - 1:0] sf_int4_w,      sf_int4_r;
    reg  [`TRUNC_W           - 1:0] sf_int8_w,      sf_int8_r;
    reg  [`TRUNC_W * 2 * `VL - 1:0] vsq_recip_w,    vsq_recip_r;
    reg  [`TRUNC_W * 2       - 1:0] int4_recip_w,   int4_recip_r;
    reg  [`TRUNC_W * 2       - 1:0] int8_recip_w,   int8_recip_r;

    reg  [`TRUNC_W + 16      - 1:0] sf_vsq_mult     [0:`VL - 1];
    reg  [`TRUNC_W + 16      - 1:0] sf_int4_mult;
    reg  [`TRUNC_W + 16      - 1:0] sf_int8_mult;
    wire [`TRUNC_W * 2 * `VL - 1:0] vsq_recip;
    wire [`TRUNC_W * 2       - 1:0] int4_recip;
    wire [`TRUNC_W * 2       - 1:0] int8_recip;

    // quantize
    reg  [`DATA8_W * `VL     - 1:0] data_out_w,     data_out_r;
    reg  [`TRUNC_W * 3       - 1:0] mult;

    // delay registers
    reg  [`ADDR_W            - 1:0] buf_addr_pl0_w, buf_addr_pl0_r;
    reg  [`ADDR_W            - 1:0] buf_addr_pl1_w, buf_addr_pl1_r;
    reg  [`ADDR_W            - 1:0] buf_addr_pl2_w, buf_addr_pl2_r;
    reg  [`ADDR_W            - 1:0] buf_addr_pl3_w, buf_addr_pl3_r;
    reg  [`ADDR_W            - 1:0] buf_addr_pl4_w, buf_addr_pl4_r;
    reg  [`ADDR_W            - 1:0] buf_addr_pl5_w, buf_addr_pl5_r;

    reg  [`ADDR_W            - 1:0] out_addr_pl0_w, out_addr_pl0_r;
    reg  [`ADDR_W            - 1:0] out_addr_pl1_w, out_addr_pl1_r;
    reg  [`ADDR_W            - 1:0] out_addr_pl2_w, out_addr_pl2_r;
    reg  [`ADDR_W            - 1:0] out_addr_pl3_w, out_addr_pl3_r;
    reg  [`ADDR_W            - 1:0] out_addr_pl4_w, out_addr_pl4_r;
    reg  [`ADDR_W            - 1:0] out_addr_pl5_w, out_addr_pl5_r;
    reg  [`ADDR_W            - 1:0] out_addr_pl6_w, out_addr_pl6_r;

    reg                             out_we_pl0_w,   out_we_pl0_r;
    reg                             out_we_pl1_w,   out_we_pl1_r;
    reg                             out_we_pl2_w,   out_we_pl2_r;
    reg                             out_we_pl3_w,   out_we_pl3_r;
    reg                             out_we_pl4_w,   out_we_pl4_r;
    reg                             out_we_pl5_w,   out_we_pl5_r;
    reg                             out_we_pl6_w,   out_we_pl6_r;

    reg                             vec_done_pl0_w, vec_done_pl0_r;
    reg                             vec_done_pl1_w, vec_done_pl1_r;
    reg                             vec_done_pl2_w, vec_done_pl2_r;
    reg                             vec_done_pl3_w, vec_done_pl3_r;
    reg                             vec_done_pl4_w, vec_done_pl4_r;
    reg                             vec_done_pl5_w, vec_done_pl5_r;
    reg                             vec_done_pl6_w, vec_done_pl6_r;

    reg                             finish_pl0_w,   finish_pl0_r;
    reg                             finish_pl1_w,   finish_pl1_r;
    reg                             finish_pl2_w,   finish_pl2_r;
    reg                             finish_pl3_w,   finish_pl3_r;
    reg                             finish_pl4_w,   finish_pl4_r;
    reg                             finish_pl5_w,   finish_pl5_r;
    reg                             finish_pl6_w,   finish_pl6_r;

    // ctrl params
    wire [`ADDR_W            - 1:0] COL = (`M / `VL) * `N;
    wire [`ADDR_W            - 1:0] VSQ = `VSQ_BUF_D;


    assign o_sf_vsq   = sf_vsq_r;
    assign o_sf_int4  = sf_int4_r;
    assign o_sf_int8  = sf_int8_r;

    assign o_buf_addr = buf_addr_pl5_r;
    assign o_out_addr = out_addr_pl6_r;
    assign o_out_data = data_out_r;
    assign o_out_we   = out_we_pl6_r;

    assign o_vec_done = vec_done_pl6_r;
    assign o_finish   = finish_pl6_r;


    //////////
    // ctrl //
    //////////

    always @(*) begin

        vec_done_w = 1'b0;
        finish_w   = 1'b0;

        state_w    = state_r;
        vsq_cnt_w  = vsq_cnt_r;
        col_cnt_w  = col_cnt_r;
        max_cnt_w  = max_cnt_r;

        if (i_mode == `INT4_VSQ) begin

            // VSQ FSM
            case (state_r)
                S_IDLE: begin

                end
                S_WAIT: begin
                    // wait for vector finish
                    if (i_start) begin
                        state_w = S_QUANT;
                    end
                end
                S_COMPARE: begin

                end
                S_QUANT: begin
                    // vsq cnt
                    if (vsq_cnt_r == VSQ - 1) begin
                        vsq_cnt_w = 0;
                        state_w   = S_WAIT;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 1;
                    end

                    // col cnt
                    if (col_cnt_r == COL - 1) begin
                        // matrix finish
                        col_cnt_w = 0;
                        state_w   = S_WAIT;
                        finish_w  = 1'b1;
                    end else begin
                        col_cnt_w = col_cnt_r + 1;
                    end

                    // vector finish (one cycle earlier)
                    if (vsq_cnt_r == VSQ - 2) begin
                        vec_done_w = 1'b1;
                    end
                end
            endcase

        end else begin
            
            // INT4/INT8 FSM
            case (state_r)
                S_IDLE: begin
                    // wait for vector finish
                    if (i_start) begin
                        state_w = S_QUANT;
                    end
                end
                S_WAIT: begin
                    // wait for first pass to finish
                    if (i_max_done) begin
                        state_w = S_COMPARE;
                    end
                end
                S_COMPARE: begin
                    if (max_cnt_r == 4 - 1) begin
                        max_cnt_w = 0;
                        state_w   = S_IDLE;
                    end else begin
                        max_cnt_w = max_cnt_r + 1;
                    end
                end
                S_QUANT: begin
                    // vsq cnt
                    if (vsq_cnt_r == VSQ - 1) begin
                        vsq_cnt_w = 0;
                        state_w   = S_IDLE;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 1;
                    end

                    // col cnt
                    if (col_cnt_r == COL - 1) begin
                        // matrix finish
                        col_cnt_w = 0;
                        state_w   = S_WAIT;
                        finish_w  = 1'b1;
                    end else begin
                        col_cnt_w = col_cnt_r + 1;
                    end

                    // vector finish (one cycle earlier)
                    if (vsq_cnt_r == VSQ - 2) begin
                        vec_done_w = 1'b1;
                    end
                end
            endcase
            
        end
    end


    /////////
    // max //
    /////////

    always @(*) begin

        mtrx_max_w = mtrx_max_r;
        for (i = 0; i < `VL; i = i + 1) run_max_w[i] = run_max_r[i];
        for (i = 0; i < `VL; i = i + 1) vec_max_w[i] = vec_max_r[i];

        if (i_mode == `INT4_VSQ) begin

            // VSQ running max
            case (state_r)
                S_IDLE: begin

                end
                S_WAIT: begin
                    if (i_start) begin
                        // reset runmax, store current vector max
                        for (i = 0; i < `VL; i = i + 1) run_max_w[i] = 0;
                        for (i = 0; i < `VL; i = i + 1) vec_max_w[i] = max(abs(i_data[i * `TRUNC_W +: `TRUNC_W]), run_max_r[i]);
                    end else begin
                        if (i_valid) begin
                            for (i = 0; i < `VL; i = i + 1) run_max_w[i] = max(abs(i_data[i * `TRUNC_W +: `TRUNC_W]), run_max_r[i]);
                        end
                    end
                end
                S_COMPARE: begin

                end
                S_QUANT: begin
                    if (i_valid) begin
                        for (i = 0; i < `VL; i = i + 1) run_max_w[i] = max(abs(i_data[i * `TRUNC_W +: `TRUNC_W]), run_max_r[i]);
                    end
                end
                default: begin
                end
            endcase

        end else begin

            // INT4/INT8 running max
            case (state_r)
                S_IDLE: begin

                end
                S_WAIT: begin
                    for (i = 0; i < `VL; i = i + 1) begin
                        run_max_w[i] = max(abs(i_data[i * `TRUNC_W +: `TRUNC_W]), run_max_r[i]);
                    end
                end
                S_COMPARE: begin
                    // compare final 16 lanes for tensor max
                    if (max_cnt_r == 0) begin
                        run_max_w[0]  = max(run_max_r[0],  run_max_r[1]);
                        run_max_w[2]  = max(run_max_r[2],  run_max_r[3]);
                        run_max_w[4]  = max(run_max_r[4],  run_max_r[5]);
                        run_max_w[6]  = max(run_max_r[6],  run_max_r[7]);
                        run_max_w[8]  = max(run_max_r[8],  run_max_r[9]);
                        run_max_w[10] = max(run_max_r[10], run_max_r[11]);
                        run_max_w[12] = max(run_max_r[12], run_max_r[13]);
                        run_max_w[14] = max(run_max_r[14], run_max_r[15]);
                    end else if (max_cnt_r == 1) begin
                        run_max_w[0]  = max(run_max_r[0],  run_max_r[2]);
                        run_max_w[4]  = max(run_max_r[4],  run_max_r[6]);
                        run_max_w[8]  = max(run_max_r[8],  run_max_r[10]);
                        run_max_w[12] = max(run_max_r[12], run_max_r[14]);
                    end else if (max_cnt_r == 2) begin
                        run_max_w[0]  = max(run_max_r[0],  run_max_r[4]);
                        run_max_w[8]  = max(run_max_r[8],  run_max_r[12]);
                    end else if (max_cnt_r == 3) begin
                        // reset runmax, store tensor max
                        for (i = 0; i < `VL; i = i + 1) run_max_w[i] = 0;
                        mtrx_max_w = max(run_max_r[0], run_max_r[8]);
                    end
                end
                S_QUANT: begin

                end
            endcase

        end
    end

    function automatic [`TRUNC_W - 1:0] max;
        input [`TRUNC_W - 1:0] data1;
        input [`TRUNC_W - 1:0] data2;

        begin
            max = (data1 > data2) ? data1 : data2;
        end
    endfunction

    function automatic [`TRUNC_W - 1:0] abs;
        input [`TRUNC_W - 1:0] data;

        begin
            abs = (data[`TRUNC_W - 1]) ? ~data + `TRUNC_W'd1 : data;
        end
    endfunction


    //////////////
    // quantize //
    //////////////

    always @(*) begin
        // vsq sf
        for (i = 0; i < `VL; i = i + 1) begin
            sf_vsq_mult[i] = vec_max_r[i] * INT4_NORM;
            sf_vsq_w[i * `TRUNC_W +: `TRUNC_W] = (sf_vsq_mult[15]) ? sf_vsq_mult[i][16 +: `TRUNC_W] + `TRUNC_W'd1 : sf_vsq_mult[i][16 +: `TRUNC_W];
            vsq_recip_w[i * `TRUNC_W * 2 +: `TRUNC_W * 2] = vsq_recip[i * `TRUNC_W * 2 +: `TRUNC_W * 2];
        end

        // int4 sf
        sf_int4_mult = mtrx_max_r * INT4_NORM;
        sf_int4_w    = (sf_int4_mult[15]) ? sf_int4_mult[16 +: `TRUNC_W] + `TRUNC_W'd1 : sf_int4_mult[16 +: `TRUNC_W];
        int4_recip_w = int4_recip;

        // int8 sf
        sf_int8_mult = mtrx_max_r * INT8_NORM;
        sf_int8_w    = (sf_int8_mult[15]) ? sf_int8_mult[16 +: `TRUNC_W] + `TRUNC_W'd1 : sf_int8_mult[16 +: `TRUNC_W];
        int8_recip_w = int8_recip;

        // quantize
        mult       = 0;
        data_out_w = 0;

        if (i_mode == `INT4_VSQ) begin
            for (i = 0; i < `VL; i = i + 1) begin
                mult = $signed(i_buf_data[i * `TRUNC_W +: `TRUNC_W]) * $signed(vsq_recip_r[i * `TRUNC_W * 2 +: `TRUNC_W * 2]);
                data_out_w[i * `DATA4_W +: `DATA4_W] = int4_truncate(mult);
            end
        end else if (i_mode == `INT4) begin
            for (i = 0; i < `VL; i = i + 1) begin
                mult = $signed(i_buf_data[i * `TRUNC_W +: `TRUNC_W]) * $signed(int4_recip_r);
                data_out_w[i * `DATA4_W +: `DATA4_W] = int4_truncate(mult);
            end
        end else begin
            for (i = 0; i < `VL; i = i + 1) begin
                mult = $signed(i_buf_data[i * `TRUNC_W +: `TRUNC_W]) * $signed(int8_recip_r);
                data_out_w[i * `DATA8_W +: `DATA8_W] = int8_truncate(mult);
            end
        end
    end

    always @(*) begin
        buf_addr_pl0_w = vsq_cnt_r;
        buf_addr_pl1_w = buf_addr_pl0_r;
        buf_addr_pl2_w = buf_addr_pl1_r;
        buf_addr_pl3_w = buf_addr_pl2_r;
        buf_addr_pl4_w = buf_addr_pl3_r;
        buf_addr_pl5_w = buf_addr_pl4_r;

        out_addr_pl0_w = vsq_cnt_r;
        out_addr_pl1_w = out_addr_pl0_r;
        out_addr_pl2_w = out_addr_pl1_r;
        out_addr_pl3_w = out_addr_pl2_r;
        out_addr_pl4_w = out_addr_pl3_r;
        out_addr_pl5_w = out_addr_pl4_r;
        out_addr_pl6_w = out_addr_pl5_r;

        out_we_pl0_w   = (state_r == S_QUANT);
        out_we_pl1_w   = out_we_pl0_r;
        out_we_pl2_w   = out_we_pl1_r;
        out_we_pl3_w   = out_we_pl2_r;
        out_we_pl4_w   = out_we_pl3_r;
        out_we_pl5_w   = out_we_pl4_r;
        out_we_pl6_w   = out_we_pl5_r;

        vec_done_pl0_w = vec_done_r;
        vec_done_pl1_w = vec_done_pl0_r;
        vec_done_pl2_w = vec_done_pl1_r;
        vec_done_pl3_w = vec_done_pl2_r;
        vec_done_pl4_w = vec_done_pl3_r;
        vec_done_pl5_w = vec_done_pl4_r;
        vec_done_pl6_w = vec_done_pl5_r;

        finish_pl0_w   = finish_r;
        finish_pl1_w   = finish_pl0_r;
        finish_pl2_w   = finish_pl1_r;
        finish_pl3_w   = finish_pl2_r;
        finish_pl4_w   = finish_pl3_r;
        finish_pl5_w   = finish_pl4_r;
        finish_pl6_w   = finish_pl5_r;
    end

    // recip units
    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: VSQ_RECIP
            reciprocal u_vsq_recip (
                .i_clk   ( i_clk ),
                .i_rst_n ( i_rst_n ),
                .i_data  ( sf_vsq_r[gi * `TRUNC_W +: `TRUNC_W] ),
                .o_recip ( vsq_recip[gi * `TRUNC_W * 2 +: `TRUNC_W * 2] )
            );
        end

        reciprocal u_int4_recip (
            .i_clk   ( i_clk ),
            .i_rst_n ( i_rst_n ),
            .i_data  ( sf_int4_r ),
            .o_recip ( int4_recip )
        );

        reciprocal u_int8_recip (
            .i_clk   ( i_clk ),
            .i_rst_n ( i_rst_n ),
            .i_data  ( sf_int8_r ),
            .o_recip ( int8_recip )
        );
    endgenerate

    function automatic [3:0] int4_truncate;
        input [53:0] data;

        reg [53:0] data_abs;        // Q20.34
        reg [3:0]  data_abs_trunc;  // INT4

        begin
            data_abs       = (data[53]) ? ~data + 54'd1 : data;
            data_abs_trunc = (data_abs[33]) ? data_abs[37:34] + 4'd1 : data_abs[37:34];
            int4_truncate  = (data[53]) ? ~data_abs_trunc + 4'd1 : data_abs_trunc;
        end
    endfunction

    function automatic [7:0] int8_truncate;
        input [53:0] data;

        reg [53:0] data_abs;        // Q20.34
        reg [7:0]  data_abs_trunc;  // INT8

        begin
            data_abs       = (data[53]) ? ~data + 54'd1 : data;
            data_abs_trunc = (data_abs[33]) ? data_abs[41:34] + 8'd1 : data_abs[41:34];
            int8_truncate  = (data[53]) ? ~data_abs_trunc + 8'd1 : data_abs_trunc;
        end
    endfunction


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state_r        <= S_WAIT;
            vsq_cnt_r      <= 0;
            col_cnt_r      <= 0;
            max_cnt_r      <= 0;
            vec_done_r     <= 0;
            finish_r       <= 0;

            mtrx_max_r     <= 0;
            for (i = 0; i < `VL; i = i + 1) run_max_r[i] <= 0;
            for (i = 0; i < `VL; i = i + 1) vec_max_r[i] <= 0;

            sf_vsq_r       <= 0;
            sf_int4_r      <= 0;
            sf_int8_r      <= 0;
            vsq_recip_r    <= 0;
            int4_recip_r   <= 0;
            int8_recip_r   <= 0;
            data_out_r     <= 0;

            buf_addr_pl0_r <= 0;
            buf_addr_pl1_r <= 0;
            buf_addr_pl2_r <= 0;
            buf_addr_pl3_r <= 0;
            buf_addr_pl4_r <= 0;
            buf_addr_pl5_r <= 0;

            out_addr_pl0_r <= 0;
            out_addr_pl1_r <= 0;
            out_addr_pl2_r <= 0;
            out_addr_pl3_r <= 0;
            out_addr_pl4_r <= 0;
            out_addr_pl5_r <= 0;
            out_addr_pl6_r <= 0;

            out_we_pl0_r   <= 0;
            out_we_pl1_r   <= 0;
            out_we_pl2_r   <= 0;
            out_we_pl3_r   <= 0;
            out_we_pl4_r   <= 0;
            out_we_pl5_r   <= 0;
            out_we_pl6_r   <= 0;

            vec_done_pl0_r <= 0;
            vec_done_pl1_r <= 0;
            vec_done_pl2_r <= 0;
            vec_done_pl3_r <= 0;
            vec_done_pl4_r <= 0;
            vec_done_pl5_r <= 0;
            vec_done_pl6_r <= 0;

            finish_pl0_r   <= 0;
            finish_pl1_r   <= 0;
            finish_pl2_r   <= 0;
            finish_pl3_r   <= 0;
            finish_pl4_r   <= 0;
            finish_pl5_r   <= 0;
            finish_pl6_r   <= 0;
        end else begin
            state_r        <= state_w;
            vsq_cnt_r      <= vsq_cnt_w;
            col_cnt_r      <= col_cnt_w;
            max_cnt_r      <= max_cnt_w;
            vec_done_r     <= vec_done_w;
            finish_r       <= finish_w;

            mtrx_max_r     <= mtrx_max_w;
            for (i = 0; i < `VL; i = i + 1) run_max_r[i] <= run_max_w[i];
            for (i = 0; i < `VL; i = i + 1) vec_max_r[i] <= vec_max_w[i];

            sf_vsq_r       <= sf_vsq_w;
            sf_int4_r      <= sf_int4_w;
            sf_int8_r      <= sf_int8_w;
            vsq_recip_r    <= vsq_recip_w;
            int4_recip_r   <= int4_recip_w;
            int8_recip_r   <= int8_recip_w;
            data_out_r     <= data_out_w;

            buf_addr_pl0_r <= buf_addr_pl0_w;
            buf_addr_pl1_r <= buf_addr_pl1_w;
            buf_addr_pl2_r <= buf_addr_pl2_w;
            buf_addr_pl3_r <= buf_addr_pl3_w;
            buf_addr_pl4_r <= buf_addr_pl4_w;
            buf_addr_pl5_r <= buf_addr_pl5_w;

            out_addr_pl0_r <= out_addr_pl0_w;
            out_addr_pl1_r <= out_addr_pl1_w;
            out_addr_pl2_r <= out_addr_pl2_w;
            out_addr_pl3_r <= out_addr_pl3_w;
            out_addr_pl4_r <= out_addr_pl4_w;
            out_addr_pl5_r <= out_addr_pl5_w;
            out_addr_pl6_r <= out_addr_pl6_w;
            
            out_we_pl0_r   <= out_we_pl0_w;
            out_we_pl1_r   <= out_we_pl1_w;
            out_we_pl2_r   <= out_we_pl2_w;
            out_we_pl3_r   <= out_we_pl3_w;
            out_we_pl4_r   <= out_we_pl4_w;
            out_we_pl5_r   <= out_we_pl5_w;
            out_we_pl6_r   <= out_we_pl6_w;

            vec_done_pl0_r <= vec_done_pl0_w;
            vec_done_pl1_r <= vec_done_pl1_w;
            vec_done_pl2_r <= vec_done_pl2_w;
            vec_done_pl3_r <= vec_done_pl3_w;
            vec_done_pl4_r <= vec_done_pl4_w;
            vec_done_pl5_r <= vec_done_pl5_w;
            vec_done_pl6_r <= vec_done_pl6_w;

            finish_pl0_r   <= finish_pl0_w;
            finish_pl1_r   <= finish_pl1_w;
            finish_pl2_r   <= finish_pl2_w;
            finish_pl3_r   <= finish_pl3_w;
            finish_pl4_r   <= finish_pl4_w;
            finish_pl5_r   <= finish_pl5_w;
            finish_pl6_r   <= finish_pl6_w;
        end
    end

endmodule
