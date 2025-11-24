`include "define.v"

module quantize (
    input                  i_clk,
    input                  i_rst_n,

    input                  i_start,
    input                  i_max_done,
    input  [1          :0] i_mode,
    input  [18 * 16 - 1:0] i_data,

    input  [18 * 16 - 1:0] i_buf_data,
    output [5          :0] o_buf_addr,

    output                 o_ram_we,
    output [4  * 16 - 1:0] o_ram_data,
    output [5          :0] o_ram_addr,

    output [18 * 16 - 1:0] o_vsq_sf,
    output [17         :0] o_int4_sf,
    output [17         :0] o_int8_sf,
    output                 o_finish
);

    integer i;
    genvar gi;


    // states
    localparam S_IDLE   = 2'd0;
    localparam S_RUNMAX = 2'd1;
    localparam S_MAX    = 2'd2;
    localparam S_QUANT  = 2'd3;

    // constants
    localparam INT4_NORM = 8'b00100100;   // 1/7   in Q0.8
    localparam INT8_NORM = 8'b00000010;   // 1/127 in Q0.8

    // end col cnt
    localparam MAX_COL = (`M / 16) * `N;
    localparam CNT_W   = $clog2(MAX_COL);


    // ctrl
    reg  [1:0]           state_w,   state_r;
    reg  [5:0]           vsq_cnt_w, vsq_cnt_r;
    reg  [CNT_W-1:0]     col_cnt_w, col_cnt_r;
    reg  [1:0]           max_cnt_w, max_cnt_r;
    reg                  finish_w,  finish_r;

    // tensor max
    reg  [17:0]          max_w,     max_r;      // unsigned INT18

    // runmax
    reg  [17:0]          runmax_w [0:15];
    reg  [17:0]          runmax_r [0:15];       // unsigned INT18

    // scale factors
    wire [18 * 16 - 1:0] vsq_sf;                // INT18 x 16 entries
    wire [36 * 16 - 1:0] vsq_recip;             // Q2.34 x 16 entries
    wire [17:0]          int4_sf;               // INT18
    wire [35:0]          int4_recip;            // Q2.34
    wire [17:0]          int8_sf;               // INT18
    wire [35:0]          int8_recip;            // Q2.34

    // quantize
    reg  [53:0]          mult;                  // Q20.34
    reg  [4  * 16 - 1:0] data_out;              // INT4  x 16 entries


    // vector finish signal
    assign o_finish  = finish_r;


    //////////
    // ctrl //
    //////////

    always @(*) begin

        finish_w  = 1'b0;

        state_w   = state_r;
        vsq_cnt_w = vsq_cnt_r;
        col_cnt_w = col_cnt_r;
        max_cnt_w = max_cnt_r;

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
                    if (vsq_cnt_r == 6'd63) begin
                        vsq_cnt_w = 6'd0;
                        state_w   = S_RUNMAX;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 6'd1;
                    end

                    // matrix finish
                    if (col_cnt_r == MAX_COL - 1) begin
                        col_cnt_w = 0;
                        state_w   = S_RUNMAX;
                    end else begin
                        col_cnt_w = col_cnt_r + 1;
                    end

                    // vector finish (one cycle earlier)
                    if (vsq_cnt_r == (6'd63 - 6'd1)) begin
                        finish_w = 1'b1;
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
                    if (max_cnt_r == 2'd3) begin
                        max_cnt_w = 2'd0;
                        state_w   = S_IDLE;
                    end else begin
                        max_cnt_w = max_cnt_r + 2'd1;
                    end
                end
                S_QUANT: begin
                    // vsq cnt
                    if (vsq_cnt_r == 6'd63) begin
                        vsq_cnt_w = 6'd0;
                        state_w   = S_IDLE;
                    end else begin
                        vsq_cnt_w = vsq_cnt_r + 6'd1;
                    end

                    // matrix finish
                    if (col_cnt_r == MAX_COL - 1) begin
                        col_cnt_w = 0;
                        state_w   = S_RUNMAX;
                    end else begin
                        col_cnt_w = col_cnt_r + 1;
                    end

                    // vector finish (one cycle earlier)
                    if (vsq_cnt_r == (6'd63 - 6'd1)) begin
                        finish_w = 1'b1;
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
        for (i = 0; i < 16; i = i + 1) runmax_w[i] = runmax_r[i];

        if (i_mode == `INT4_VSQ) begin
            case (state_r)
                S_IDLE: begin

                end
                S_RUNMAX: begin
                    for (i = 0; i < 16; i = i + 1) begin
                        runmax_w[i] = max(abs(i_data[i*18 +: 18]), runmax_r[i]);
                    end
                end
                S_MAX: begin

                end
                S_QUANT: begin
                    // vector finish, reset runmax
                    if (vsq_cnt_r == 6'd63) begin
                        for (i = 0; i < 16; i = i + 1) runmax_w[i] = 0;
                    end
                end
            endcase
        end else begin
            case (state_r)
                S_IDLE: begin

                end
                S_RUNMAX: begin
                    for (i = 0; i < 16; i = i + 1) begin
                        runmax_w[i] = max(abs(i_data[i*18 +: 18]), runmax_r[i]);
                    end
                end
                S_MAX: begin
                    // compare final 16 lanes for tensor max
                    if (max_cnt_r == 2'd0) begin
                        runmax_w[0]  = max(runmax_r[0],  runmax_r[1]);
                        runmax_w[2]  = max(runmax_r[2],  runmax_r[3]);
                        runmax_w[4]  = max(runmax_r[4],  runmax_r[5]);
                        runmax_w[6]  = max(runmax_r[6],  runmax_r[7]);
                        runmax_w[8]  = max(runmax_r[8],  runmax_r[9]);
                        runmax_w[10] = max(runmax_r[10], runmax_r[11]);
                        runmax_w[12] = max(runmax_r[12], runmax_r[13]);
                        runmax_w[14] = max(runmax_r[14], runmax_r[15]);
                    end else if (max_cnt_r == 2'd1) begin
                        runmax_w[0]  = max(runmax_w[0],  runmax_w[2]);
                        runmax_w[4]  = max(runmax_w[4],  runmax_w[6]);
                        runmax_w[8]  = max(runmax_w[8],  runmax_w[10]);
                        runmax_w[12] = max(runmax_w[12], runmax_w[14]);
                    end else if (max_cnt_r == 2'd2) begin
                        runmax_w[0]  = max(runmax_w[0],  runmax_w[4]);
                        runmax_w[8]  = max(runmax_w[8],  runmax_w[12]);
                    end else if (max_cnt_r == 2'd3) begin
                        max_w = max(runmax_w[0], runmax_w[8]);
                    end
                end
                S_QUANT: begin
                    // matrix finish, reset runmax
                    if (col_cnt_r == MAX_COL - 1) begin
                        for (i = 0; i < 16; i = i + 1) runmax_w[i] = 0;
                    end
                end
            endcase
        end
    end

    function automatic [17:0] max;
        input [17:0] data1;
        input [17:0] data2;

        begin
            max = (data1 > data2) ? data1 : data2;
        end
    endfunction

    function automatic [17:0] abs;
        input [17:0] data;

        begin
            abs = (data[17]) ? ~data + 18'd1 : data;
        end
    endfunction


    ////////
    // sf //
    ////////

    assign o_vsq_sf  = vsq_sf;
    assign o_int4_sf = int4_sf;
    assign o_int8_sf = int8_sf;

    // vsq scale factor
    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: SF_CALC
            assign vsq_sf[gi*18 +: 18] = (runmax_r[gi] * INT4_NORM) >> 8;   // Q18.8 -> Q18.0

            reciprocal vsq_recip_unit (
                .i_data  ( vsq_sf[gi*18 +: 18] ),
                .o_recip ( vsq_recip[gi*36 +: 36] )
            );
        end
    endgenerate

    // int4 scale factor
    assign int4_sf = (max_r * INT4_NORM) >> 8;  // Q18.8 -> Q18.0
    reciprocal int4_recip_unit (
        .i_data  ( int4_sf ),
        .o_recip ( int4_recip )
    );

    // int8 scale factor
    assign int8_sf = (max_r * INT8_NORM) >> 8;  // Q18.8 -> Q18.0
    reciprocal int8_recip_unit (
        .i_data  ( int8_sf ),
        .o_recip ( int8_recip )
    );


    //////////////
    // quantize //
    //////////////

    assign o_buf_addr = vsq_cnt_r;  // read from vsq buffer
    assign o_ram_addr = vsq_cnt_r;
    assign o_ram_data = data_out;
    assign o_ram_we   = (state_r == S_QUANT);

    always @(*) begin
        if (i_mode == `INT4_VSQ) begin
            // vsq quantization
            for (i = 0; i < 16; i = i + 1) begin
                mult               = $signed(i_buf_data[i*18 +: 18]) * $signed(vsq_recip[i*36 +: 36]);
                data_out[i*4 +: 4] = truncate(mult);
            end
        end else if (i_mode == `INT4) begin
            // int4 quantization
            for (i = 0; i < 16; i = i + 1) begin
                mult               = $signed(i_buf_data[i*18 +: 18]) * $signed(int4_recip);
                data_out[i*4 +: 4] = truncate(mult);
            end
        end else begin
            // int8 quantization
            for (i = 0; i < 16; i = i + 1) begin
                mult               = $signed(i_buf_data[i*18 +: 18]) * $signed(int8_recip);
                data_out[i*4 +: 4] = truncate(mult);
            end
        end
    end

    function automatic [3:0] truncate;
        input [53:0] data;

        reg [53:0] data_abs;        // Q20.34
        reg [53:0] data_abs_rnd;    // Q54.0
        reg [3:0]  data_abs_sat;    // INT4

        begin
            data_abs     = (data[53]) ? ~data + 54'd1 : data;
            data_abs_rnd = (data_abs[33]) ? (data_abs >> 34) + 54'd1 : data_abs >> 34;
            if (data[53]) begin
                // larger limit for negative numbers
                data_abs_sat = (data_abs_rnd > {50'd0, 4'b1000}) ? 4'b1000 : data_abs_rnd[3:0];
            end else begin
                data_abs_sat = (data_abs_rnd > {50'd0, 4'b0111}) ? 4'b0111 : data_abs_rnd[3:0];
            end
            truncate = (data[53]) ? ~data_abs_sat + 4'd1 : data_abs_sat;
        end
    endfunction


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state_r   <= S_RUNMAX;
            vsq_cnt_r <= 0;
            col_cnt_r <= 0;
            max_cnt_r <= 0;
            finish_r  <= 0;
            max_r     <= 0;
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= 0;
        end else begin
            state_r   <= state_w;
            vsq_cnt_r <= vsq_cnt_w;
            col_cnt_r <= col_cnt_w;
            max_cnt_r <= max_cnt_w;
            finish_r  <= finish_w;
            max_r     <= max_w;
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= runmax_w[i];
        end
    end

endmodule
