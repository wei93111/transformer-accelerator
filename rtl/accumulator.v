module accumulator #(
    parameter VEC_WIDTH  = 384,
    parameter ARR_DEPTH  = 16,
    parameter ADDR_WIDTH = $clog2(ARR_DEPTH)
)(
    input                   i_clk,
    input                   i_rst_n,
    input                   i_we,       // write enable
    input  [ADDR_WIDTH-1:0] i_addr_wr,  // write address
    input  [VEC_WIDTH-1:0]  i_data_wr,  // write data
    input  [ADDR_WIDTH-1:0] i_addr_rd,  // read address
    output [VEC_WIDTH-1:0]  o_data_rd   // read data
);

    integer i;

    /////////////////////
    // dual port array //
    /////////////////////

    // Register array
    reg [VEC_WIDTH-1:0] mem [0:ARR_DEPTH-1];

    // Read logic
    assign o_data_rd = mem[i_addr_rd];

    // Write logic
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < ARR_DEPTH; i = i + 1) mem[i] <= {VEC_WIDTH{1'b0}};
        end else if (i_we) begin
            mem[i_addr_wr] <= i_data_wr;
        end
    end


endmodule
