`include "define.v"

module quantize (
    input                         i_clk,
    input                         i_rst_n,

    // ctrl in
    input                         i_start,
    input                         i_max_done,
    input  [1                 :0] i_mode,
    input  [`TRUNC_W * `VL - 1:0] i_data,

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
    localparam S_IDLE   = 2'd0;
    localparam S_RUNMAX = 2'd1;
    localparam S_MAX    = 2'd2;
    localparam S_QUANT  = 2'd3;

    // constants
    localparam INT4_NORM = 16'b0010_0100_1001_0010;     // 1/7   in Q0.16
    localparam INT8_NORM = 16'b0000_0010_0000_0100;     // 1/127 in Q0.16


    // ctrl
    reg  [1                     :0] state_w,    state_r;
    reg  [`ADDR_W            - 1:0] vsq_cnt_w,  vsq_cnt_r;
    reg  [`ADDR_W            - 1:0] col_cnt_w,  col_cnt_r;
    reg  [`ADDR_W            - 1:0] max_cnt_w,  max_cnt_r;
    reg                             vec_done_w, vec_done_r;
    reg                             finish_w,   finish_r;

    // tensor max
    reg  [`TRUNC_W           - 1:0] max_w,      max_r;

    // runmax
    reg  [`TRUNC_W           - 1:0] runmax_w [0:`VL - 1];
    reg  [`TRUNC_W           - 1:0] runmax_r [0:`VL - 1];

    // scale factors
    wire [`TRUNC_W * `VL     - 1:0] sf_vsq;
    wire [`TRUNC_W * 2 * `VL - 1:0] vsq_recip;
    wire [`TRUNC_W           - 1:0] sf_int4;
    wire [`TRUNC_W * 2       - 1:0] int4_recip;
    wire [`TRUNC_W           - 1:0] sf_int8;
    wire [`TRUNC_W * 2       - 1:0] int8_recip;

    // quantize
    reg  [`TRUNC_W * 3       - 1:0] mult;
    reg  [`DATA8_W * `VL     - 1:0] data_out;

    // ctrl params
    wire [`ADDR_W            - 1:0] COL = (`M / `VL) * `N;
    wire [`ADDR_W            - 1:0] VSQ = `VSQ_BUF_D;


    assign o_vec_done = vec_done_r;
    assign o_finish   = finish_r;


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
            case (state_r)
                S_IDLE: begin

                end
                S_RUNMAX: begin
                    if (i_start) begin
                        state_w = S_QUANT;
                    end
                end
                S_MAX: begin

                end
                S_QUANT: begin
                    // vsq cnt
                    if (vsq_cnt_r == VSQ - 1) begin
                        vsq_cnt_w = 0;
                        state_w   = S_RUNMAX;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 1;
                    end

                    // col cnt
                    if (col_cnt_r == COL - 1) begin
                        // matrix finish
                        col_cnt_w = 0;
                        state_w   = S_RUNMAX;
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
            case (state_r)
                S_IDLE: begin
                    if (i_start) begin
                        state_w = S_QUANT;
                    end
                end
                S_RUNMAX: begin
                    if (i_max_done) begin
                        // finish first pass for tensor max
                        state_w = S_MAX;
                    end
                end
                S_MAX: begin
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
                        state_w   = S_RUNMAX;
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

        max_w = max_r;
        for (i = 0; i < `VL; i = i + 1) runmax_w[i] = runmax_r[i];

        if (i_mode == `INT4_VSQ) begin
            case (state_r)
                S_IDLE: begin

                end
                S_RUNMAX: begin
                    for (i = 0; i < `VL; i = i + 1) begin
                        runmax_w[i] = max(abs(i_data[i * `TRUNC_W +: `TRUNC_W]), runmax_r[i]);
                    end
                end
                S_MAX: begin

                end
                S_QUANT: begin
                    // vector finish, reset runmax
                    if (vsq_cnt_r == VSQ - 1) begin
                        for (i = 0; i < `VL; i = i + 1) runmax_w[i] = 0;
                    end
                end
            endcase
        end else begin
            case (state_r)
                S_IDLE: begin

                end
                S_RUNMAX: begin
                    for (i = 0; i < `VL; i = i + 1) begin
                        runmax_w[i] = max(abs(i_data[i * `TRUNC_W +: `TRUNC_W]), runmax_r[i]);
                    end
                end
                S_MAX: begin
                    // compare final 16 lanes for tensor max
                    if (max_cnt_r == 0) begin
                        runmax_w[0]  = max(runmax_r[0],  runmax_r[1]);
                        runmax_w[2]  = max(runmax_r[2],  runmax_r[3]);
                        runmax_w[4]  = max(runmax_r[4],  runmax_r[5]);
                        runmax_w[6]  = max(runmax_r[6],  runmax_r[7]);
                        runmax_w[8]  = max(runmax_r[8],  runmax_r[9]);
                        runmax_w[10] = max(runmax_r[10], runmax_r[11]);
                        runmax_w[12] = max(runmax_r[12], runmax_r[13]);
                        runmax_w[14] = max(runmax_r[14], runmax_r[15]);
                    end else if (max_cnt_r == 1) begin
                        runmax_w[0]  = max(runmax_w[0],  runmax_w[2]);
                        runmax_w[4]  = max(runmax_w[4],  runmax_w[6]);
                        runmax_w[8]  = max(runmax_w[8],  runmax_w[10]);
                        runmax_w[12] = max(runmax_w[12], runmax_w[14]);
                    end else if (max_cnt_r == 2) begin
                        runmax_w[0]  = max(runmax_w[0],  runmax_w[4]);
                        runmax_w[8]  = max(runmax_w[8],  runmax_w[12]);
                    end else if (max_cnt_r == 3) begin
                        max_w = max(runmax_w[0], runmax_w[8]);
                    end
                end
                S_QUANT: begin
                    // matrix finish, reset runmax
                    if (col_cnt_r == COL - 1) begin
                        for (i = 0; i < `VL; i = i + 1) runmax_w[i] = 0;
                    end
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


    ////////
    // sf //
    ////////

    assign o_sf_vsq  = sf_vsq;
    assign o_sf_int4 = sf_int4;
    assign o_sf_int8 = sf_int8;

    // vsq scale factor
    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: SF_CALC
            assign sf_vsq[gi * `TRUNC_W +: `TRUNC_W] = ({16'd0, runmax_r[gi]} * INT4_NORM) >> 16;

            reciprocal u_vsq_recip (
                .i_data  ( sf_vsq[gi * `TRUNC_W +: `TRUNC_W] ),
                .o_recip ( vsq_recip[gi * `TRUNC_W * 2 +: `TRUNC_W * 2] )
            );
        end
    endgenerate

    // int4 scale factor
    assign sf_int4 = ({16'd0, max_r} * INT4_NORM) >> 16;
    reciprocal u_int4_recip (
        .i_data  ( sf_int4 ),
        .o_recip ( int4_recip )
    );

    // int8 scale factor
    assign sf_int8 = ({16'd0, max_r} * INT8_NORM) >> 16;
    reciprocal u_int8_recip (
        .i_data  ( sf_int8 ),
        .o_recip ( int8_recip )
    );


    //////////////
    // quantize //
    //////////////

    assign o_buf_addr = vsq_cnt_r;  // read from vsq buffer
    assign o_out_addr = vsq_cnt_r;
    assign o_out_data = data_out;
    assign o_out_we   = (state_r == S_QUANT);

    always @(*) begin

        mult     = 0;
        data_out = 0;

        if (i_mode == `INT4_VSQ) begin
            // vsq quantization
            for (i = 0; i < `VL; i = i + 1) begin
                mult = $signed(i_buf_data[i * `TRUNC_W +: `TRUNC_W]) * $signed(vsq_recip[i * `TRUNC_W * 2 +: `TRUNC_W * 2]);
                data_out[i * `DATA4_W +: `DATA4_W] = int4_truncate(mult);
            end
        end else if (i_mode == `INT4) begin
            // int4 quantization
            for (i = 0; i < `VL; i = i + 1) begin
                mult = $signed(i_buf_data[i * `TRUNC_W +: `TRUNC_W]) * $signed(int4_recip);
                data_out[i * `DATA4_W +: `DATA4_W] = int4_truncate(mult);
            end
        end else begin
            // int8 quantization
            for (i = 0; i < `VL; i = i + 1) begin
                mult = $signed(i_buf_data[i * `TRUNC_W +: `TRUNC_W]) * $signed(int8_recip);
                data_out[i * `DATA8_W +: `DATA8_W] = int8_truncate(mult);
            end
        end
    end

    // truncate Q20.34 -> INT4
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

    // truncate Q20.34 -> INT8
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
            state_r    <= S_RUNMAX;
            vsq_cnt_r  <= 0;
            col_cnt_r  <= 0;
            max_cnt_r  <= 0;
            vec_done_r <= 0;
            finish_r   <= 0;
            max_r      <= 0;
            for (i = 0; i < `VL; i = i + 1) runmax_r[i] <= 0;
        end else begin
            state_r    <= state_w;
            vsq_cnt_r  <= vsq_cnt_w;
            col_cnt_r  <= col_cnt_w;
            max_cnt_r  <= max_cnt_w;
            vec_done_r <= vec_done_w;
            finish_r   <= finish_w;
            max_r      <= max_w;
            for (i = 0; i < `VL; i = i + 1) runmax_r[i] <= runmax_w[i];
        end
    end

endmodule
