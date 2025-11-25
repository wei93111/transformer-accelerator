`include "define.v"

module ram #(
    parameter WIDTH  = 264,
    parameter DEPTH  = 2048,
    parameter ADDR_W = $clog2(DEPTH)
)(
    input                  i_clk,
    input                  i_rst_n,
    input                  i_we,
    input  [`ADDR_W - 1:0] i_addr,      // port is always `ADDR_W wide
    input  [WIDTH   - 1:0] i_data,
    output [WIDTH   - 1:0] o_data
);

    integer i;


    // pseudo memory array
    reg [WIDTH - 1:0] mem [0:DEPTH - 1];

    // limited addr range
    wire [ADDR_W - 1:0] addr = i_addr[ADDR_W - 1:0];


    // read logic
    assign o_data = mem[addr];

    // write logic (1 cycle latency)
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < DEPTH; i = i + 1) mem[i] <= {WIDTH{1'b0}};
        end else if (i_we) begin
            mem[addr] <= i_data;
        end
    end

endmodule
