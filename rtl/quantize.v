module quantize (
    input                  i_clk,
    input                  i_rst_n,
    input                  i_start,
    input  [40 * 16 - 1:0] i_data,

    input  [40 * 16 - 1:0] i_buf_data,
    output [5          :0] o_buf_addr,

    output                 o_ram_we,
    output [4  * 16 - 1:0] o_ram_data,
    output [5          :0] o_ram_addr,

    output [40 * 16 - 1:0] o_sf_data,
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
    reg                  state;
    reg  [5:0]           quant_cnt;
    reg                  sf_valid;

    // runmax
    reg  [39:0]          abs_data [0:15];
    reg  [39:0]          runmax_w [0:15];
    reg  [39:0]          runmax_r [0:15];   // Q30.10

    // quantize
    wire [40 * 16 - 1:0] sf;                // Q30.10 x 16 entries
    wire [4  * 16 - 1:0] data_out;          // INT4   x 16 entries


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

        for (i = 0; i < 16; i = i + 1) runmax_w[i] = runmax_r[i];

        case (state)
            S_RUNMAX: begin
                for (i = 0; i < 16; i = i + 1) abs_data[i] = (i_data[i*40 + 39]) ? (~i_data[i*40 +: 40] + 1'b1) : i_data[i*40 +: 40];
                for (i = 0; i < 16; i = i + 1) runmax_w[i] = (abs_data[i] > runmax_r[i]) ? abs_data[i] : runmax_r[i];
            end
            S_QUANT: begin
                // reset runmax after vector quantize done
                if (quant_cnt == 6'd63) begin
                    for (i = 0; i < 16; i = i + 1) runmax_w[i] = 0;
                end
            end
        endcase
    end

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= 40'd0;
        end else begin
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= runmax_w[i];
        end
    end


    //////////////
    // quantize //
    //////////////

    assign o_sf_data  = sf;
    assign o_sf_valid = sf_valid;

    // sf valid
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            sf_valid <= 1'b0;
        end else if (state == S_QUANT && quant_cnt == 6'd63) begin
            sf_valid <= 1'b1;
        end else begin
            sf_valid <= 1'b0;
        end
    end


    assign o_buf_addr = quant_cnt;  // read from vsq buffer
    assign o_ram_addr = quant_cnt;
    assign o_ram_data = data_out;
    assign o_ram_we   = (state == S_QUANT);

    // quantize
    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: QUANTIZE
            assign sf[gi*40 +: 40] = (runmax_r[gi] * ONE_SEVENTH) >> 8;   // Q30.18 >> Q30.10
            assign data_out[gi*4 +: 4] = $signed(i_buf_data[gi*40 +: 40]) / $signed(sf[gi*40 +: 40]);
        end
    endgenerate

endmodule
