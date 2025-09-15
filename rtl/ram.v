module ram #(
    parameter VEC_WIDTH  = 264,
    parameter ARR_DEPTH  = 2048,
    parameter ADDR_WIDTH = $clog2(ARR_DEPTH)
)(
    input                       i_clk,
    input                       i_rst_n,
    input                       i_we,       // write enable
    input      [ADDR_WIDTH-1:0] i_addr,     // read / write address
    input      [VEC_WIDTH-1:0]  i_data,     // input write data
    output reg [VEC_WIDTH-1:0]  o_data      // output read data
);


    integer i;

    ///////////////////////
    // single port array //
    ///////////////////////

    // Memory array
    reg [VEC_WIDTH-1:0] mem [0:ARR_DEPTH-1];

    // Read / write logic ( 1 cycle latency )
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < ARR_DEPTH; i = i + 1) mem[i] <= {VEC_WIDTH{1'b0}};
        end else if (i_we) begin
            mem[i_addr] <= i_data;
        end else begin
            o_data = mem[i_addr];
        end
    end


endmodule
