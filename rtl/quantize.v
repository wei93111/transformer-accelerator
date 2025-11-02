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
    output [5:0]       o_ram_addr
);

    integer i;
    genvar gi;


    // states
    localparam S_RUNMAX = 2'd0;         // idle - keep running maxes
    localparam S_SFCALC = 2'd1;         // calculate scale factor
    localparam S_QUANT  = 2'd2;         // quantize


    // state ctrl
    reg  [1:0]       state;

    // registers
    reg  [40-1:0]    run_max [0:16-1];  // running max registers
    reg  [40-1:0]    sf      [0:16-1];  // scale factor registers

    // vsq buffer addr
    reg  [5:0]       buf_addr;

    // output ram data
    wire [4*16-1:0]  ram_data;
    reg  [5:0]       ram_addr;


    assign o_buf_addr = buf_addr;
    assign o_ram_we   = (state == S_QUANT);
    assign o_ram_data = ram_data;
    assign o_ram_addr = ram_addr;



    //////////
    // ctrl //
    //////////

    // state
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state <= S_RUNMAX;
        end else begin
            case (state)
                S_RUNMAX: begin
                    // vsq buf filled
                    if (i_start) begin
                        state <= S_SFCALC;
                    end
                end
                S_SFCALC: begin
                    // 1 cycle
                    state <= S_QUANT;
                end
                S_QUANT: begin
                    // quantize done
                    if (buf_addr == 6'd63) begin
                        state <= S_RUNMAX;
                    end
                end
            endcase
        end
    end


    /////////////////
    // running max //
    /////////////////

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: RUNMAX
            wire [39:0] abs_data = (i_data[gi*40 + 39]) ? (~i_data[gi*40 +: 40] + 1'b1) : i_data[gi*40 +: 40];

            // running max registers
            always @(posedge i_clk or negedge i_rst_n) begin
                if (!i_rst_n) begin
                    run_max[gi] <= 40'd0;
                end else begin
                    case (state)
                        S_RUNMAX: begin
                            if (abs_data > run_max[gi]) begin
                                run_max[gi] <= abs_data;
                            end
                        end
                        default: begin
                        end
                    endcase
                end
            end
        end
    endgenerate


    /////////////
    // sf calc //
    /////////////

    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: SFCALC
            always @(posedge i_clk or negedge i_rst_n) begin
                if (!i_rst_n) begin
                    sf[gi] <= 40'd0;
                end else begin
                    case (state)
                        S_SFCALC: begin
                            // TODO: use reciprocal unit
                            sf[gi] <= 40'd7 / run_max[gi];
                        end
                        default: begin
                        end
                    endcase
                end
            end
        end
    endgenerate


    //////////////
    // quantize //
    //////////////

    // vsq buffer addr
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            buf_addr <= 6'd0;
        end else begin
            case (state)
                S_QUANT: begin
                    if (buf_addr == 6'd63) begin
                        buf_addr <= 6'd0;
                    end else begin
                        buf_addr <= buf_addr + 6'd1;
                    end
                end
                default: begin
                end
            endcase
        end
    end

    // quantize
    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: QUANT
            // truncate to INT4
            // TODO: shifting
            assign ram_data[gi*4 +: 4] = $signed(i_buf_data[gi*40 +: 40]) * $signed(sf[gi]);
        end
    endgenerate

    // output ram addr
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            ram_addr <= 6'd0;
        end else begin
            case (state)
                S_QUANT: begin
                    if (ram_addr == 6'd63) begin
                        ram_addr <= 6'd0;
                    end else begin
                        ram_addr <= ram_addr + 6'd1;
                    end
                end
                default: begin
                end
            endcase
        end
    end

    // TODO: write out the SF values to the output ram (after quantized output data is written)

endmodule
