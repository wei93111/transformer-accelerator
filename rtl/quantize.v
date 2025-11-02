module quantize (
    input              i_clk,
    input              i_rst_n,
    input              i_start,     // start signal
    input  [40*16-1:0] i_data,      // data after relu

    // vsq buffer interface
    input  [40*16-1:0] i_buf_data,
    output [5:0]       o_buf_addr,

    // output ram interface
    output             o_ram_we,
    output [4*16-1:0]  o_ram_data,
    output [5:0]       o_ram_addr,

    // output sf interface
    output             o_sf_valid,
    output [40*16-1:0] o_sf_data
);

    integer i;
    genvar gi;


    // states
    localparam S_RUNMAX = 1'b0;     // idle - keep running maxes
    localparam S_QUANT  = 1'b1;     // quantize

    // constants
    localparam ONE_SEVENTH = 8'b00100100;  // Q0.8


    // ctrl
    reg              state;
    reg  [5:0]       quant_cnt;

    // runmax
    reg  [40-1:0]    abs_data  [0:16-1];
    reg  [40-1:0]    run_max_w [0:16-1];
    reg  [40-1:0]    run_max_r [0:16-1];    // Q30.10

    // quantize
    wire [40*16-1:0] sf;                    // Q30.10 x 16 entries
    wire [4*16-1:0]  data_out;              // INT4 x 16 entries


    //////////
    // ctrl //
    //////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state     <= S_RUNMAX;
            quant_cnt <= 6'd0;
        end else begin
            case (state)
                S_RUNMAX: begin
                    // vsq buf filled
                    if (i_start) begin
                        state     <= S_QUANT;
                        quant_cnt <= 6'd0;
                    end
                end
                S_QUANT: begin
                    // quantize done
                    if (quant_cnt == 6'd63) begin
                        state     <= S_RUNMAX;
                        quant_cnt <= 6'd0;
                    end else begin
                        quant_cnt <= quant_cnt + 6'd1;
                        state     <= S_QUANT;
                    end
                end
            endcase
        end
    end


    ////////////
    // runmax //
    ////////////

    always @(*) begin

        for (i = 0; i < 16; i = i + 1) abs_data[i]  = 0;
        for (i = 0; i < 16; i = i + 1) run_max_w[i] = run_max_r[i];

        case (state)
            S_RUNMAX: begin
                for (i = 0; i < 16; i = i + 1) abs_data[i]  = (i_data[i*40 + 39]) ? (~i_data[i*40 +: 40] + 1'b1) : i_data[i*40 +: 40];
                for (i = 0; i < 16; i = i + 1) run_max_w[i] = (abs_data[i] > run_max_r[i]) ? abs_data[i] : run_max_r[i];
            end
            S_QUANT: begin
                if (quant_cnt == 6'd63) begin
                    for (i = 0; i < 16; i = i + 1) run_max_w[i] = 0;
                end
            end
        endcase
    end

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < 16; i = i + 1) run_max_r[i] <= 40'd0;
        end else begin
            for (i = 0; i < 16; i = i + 1) run_max_r[i] <= run_max_w[i];
        end
    end


    //////////////
    // quantize //
    //////////////

    assign o_sf_data  = sf;
    assign o_sf_valid = (state == S_QUANT);

    assign o_buf_addr = quant_cnt;
    assign o_ram_addr = quant_cnt;
    assign o_ram_data = data_out;
    assign o_ram_we   = (state == S_QUANT);

    // quantize
    for (gi = 0; gi < 16; gi = gi + 1) assign sf[gi*40 +: 40] = (run_max_r[gi] * ONE_SEVENTH) >> 8;   // Q30.18 >> Q30.10
    for (gi = 0; gi < 16; gi = gi + 1) assign data_out[gi*4 +: 4] = $signed(i_buf_data[gi*40 +: 40] >>> 10) / $signed(sf[gi*40 +: 40] >>> 10);

endmodule
