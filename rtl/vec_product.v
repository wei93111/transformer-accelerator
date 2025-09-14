module vec_product #(
    parameter BIT_WIDTH = 4,
    parameter VEC_SIZE  = 64,
    parameter RES_WIDTH = BIT_WIDTH * 2 + $clog2(VEC_SIZE)
)(
    input  [255:0]         i_a,         // flattened a vector
    input  [255:0]         i_b,         // flattened b vector
    output [RES_WIDTH-1:0] o_product    // vector dot product result
);

genvar gi;
integer i;

wire [BIT_WIDTH-1:0]   a    [0:VEC_SIZE-1];  // a vector array
wire [BIT_WIDTH-1:0]   b    [0:VEC_SIZE-1];  // b vector array
wire [BIT_WIDTH*2-1:0] mult [0:VEC_SIZE-1];  // mult result array
reg  [RES_WIDTH-1:0]   acc;                  // accumulation result

assign o_product = acc;


// unpack input
generate
    for (gi = 0; gi < VEC_SIZE; gi = gi + 1) begin: UNPACK
        assign a[gi] = i_a[gi*BIT_WIDTH +: BIT_WIDTH];
        assign b[gi] = i_b[gi*BIT_WIDTH +: BIT_WIDTH];
    end
endgenerate


// multiply elements
generate
    for (gi = 0; gi < VEC_SIZE; gi = gi + 1) begin: MULT
        assign mult[gi] = $signed(a[gi]) * $signed(b[gi]);
    end
endgenerate


// TODO: adder tree instead of chain adder
always @(*) begin
    acc = 0;
    for (i = 0; i < VEC_SIZE; i = i + 1) begin
        acc += $signed(mult[i]);
    end
end

endmodule
