`include "define.v"

module buffer #(
    parameter WIDTH  = 384,
    parameter DEPTH  = 16,
    parameter ADDR_W = $clog2(DEPTH)
)(
    input                  i_clk,
    input                  i_rst_n,
    input                  i_we,
    input  [`ADDR_W - 1:0] i_addr_wr,
    input  [WIDTH   - 1:0] i_data_wr,
    input  [`ADDR_W - 1:0] i_addr_rd,
    output [WIDTH   - 1:0] o_data_rd
);

    integer i;

    // Register array
    reg  [WIDTH - 1:0] registers [0:DEPTH - 1];

    // limited addr range (port is always `ADDR_W wide)
    wire [ADDR_W - 1:0] addr_wr = i_addr_wr[ADDR_W - 1:0];
    wire [ADDR_W - 1:0] addr_rd = i_addr_rd[ADDR_W - 1:0];


    // Read logic
    assign o_data_rd = registers[addr_rd];

    // Write logic (1 cycle latency)
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < DEPTH; i = i + 1) registers[i] <= 0;
        end else if (i_we) begin
            registers[addr_wr] <= i_data_wr;
        end
    end

endmodule
