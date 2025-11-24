module quantize (
    input                  i_clk,
    input                  i_rst_n,
    input                  i_start,
    input  [18 * 16 - 1:0] i_data,

    input  [18 * 16 - 1:0] i_buf_data,
    output [5          :0] o_buf_addr,

    output                 o_ram_we,
    output [4  * 16 - 1:0] o_ram_data,
    output [5          :0] o_ram_addr,

    output [18 * 16 - 1:0] o_sf_data,
    output                 o_sf_valid
);

    integer i;
    genvar gi;


    // states
    localparam S_RUNMAX = 1'b0;
    localparam S_QUANT  = 1'b1;

    // constants
    localparam ONE_SEVENTH = 8'b00100100;   // Q0.8


    // ctrl
    reg                  state_w,     state_r;
    reg  [5:0]           quant_cnt_w, quant_cnt_r;
    reg                  sf_valid_w,  sf_valid_r;

    // runmax
    reg  [17:0]          abs_data [0:15];
    reg  [17:0]          runmax_w [0:15];
    reg  [17:0]          runmax_r [0:15];   // unsigned INT18

    // quantize
    wire [18 * 16 - 1:0] sf_data;           // INT18 x 16 entries
    wire [36 * 16 - 1:0] sf_recip;          // Q2.34 x 16 entries
    wire [4  * 16 - 1:0] data_out;          // INT4  x 16 entries


    //////////
    // ctrl //
    //////////

    always @(*) begin

        sf_valid_w  = 1'b0;

        state_w     = state_r;
        quant_cnt_w = quant_cnt_r;

        case (state_r)
            S_RUNMAX: begin
                if (i_start) begin
                    state_w = S_QUANT;
                end
            end
            S_QUANT: begin
                // quant cnt
                if (quant_cnt_r == 6'd63) begin
                    quant_cnt_w = 6'd0;
                    state_w     = S_RUNMAX;
                end else begin
                    quant_cnt_w = quant_cnt_r + 6'd1;
                end

                // sf valid (one cycle earlier)
                if (quant_cnt_r == (6'd63 - 6'd1)) begin
                    sf_valid_w = 1'b1;
                end
            end
        endcase
    end


    ////////////
    // runmax //
    ////////////

    always @(*) begin

        for (i = 0; i < 16; i = i + 1) runmax_w[i] = runmax_r[i];

        case (state)
            S_RUNMAX: begin
                for (i = 0; i < 16; i = i + 1) begin
                    abs_data[i] = (i_data[i*18 + 17]) ? ~i_data[i*18 +: 18] + 18'd1 : i_data[i*18 +: 18];
                    runmax_w[i] = (abs_data[i] > runmax_r[i]) ? abs_data[i] : runmax_r[i];
                end
            end
            S_QUANT: begin
                // reset runmax after vector quantize done
                if (quant_cnt == 6'd63) begin
                    for (i = 0; i < 16; i = i + 1) runmax_w[i] = 0;
                end
            end
        endcase
    end


    //////////////
    // quantize //
    //////////////

    // sf
    assign o_sf_data  = sf_data;
    assign o_sf_valid = sf_valid_r;

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: SF_CALC
            assign sf_data[gi*18 +: 18] = (runmax_r[gi] * ONE_SEVENTH) >> 8;   // Q18.8 -> Q18.0
        end
    endgenerate


    // quantize
    assign o_buf_addr = quant_cnt_r;  // read from vsq buffer
    assign o_ram_addr = quant_cnt_r;
    assign o_ram_data = data_out;
    assign o_ram_we   = (state_r == S_QUANT);

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: QUANTIZE
            wire [53:0] mult;

            reciprocal recip (
                .i_data  ( sf_data[gi*18 +: 18] ),
                .o_recip ( sf_recip[gi*36 +: 36] )
            );

            assign mult = $signed(i_buf_data[gi*18 +: 18]) * $signed(sf_recip[gi*36 +: 36]);    // Q20.34
            assign data_out[gi*4 +: 4] = truncate(mult);                                        // INT4
        end
    endgenerate

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
            state_r     <= S_RUNMAX;
            quant_cnt_r <= 0;
            sf_valid_r  <= 0;
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= 0;
        end else begin
            state_r     <= state_w;
            quant_cnt_r <= quant_cnt_w;
            sf_valid_r  <= sf_valid_w;
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= runmax_w[i];
        end
    end

endmodule
