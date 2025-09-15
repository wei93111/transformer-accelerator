module vec_product #(
    parameter BIT_WIDTH = 4,
    parameter VEC_SIZE  = 64,
    parameter NUM_LEVEL = $clog2(VEC_SIZE),
    parameter ACC_WIDTH = BIT_WIDTH * 2 + NUM_LEVEL
)(
    input  [255:0]         i_a,         // flattened a vector
    input  [255:0]         i_b,         // flattened b vector
    output [ACC_WIDTH-1:0] o_product    // vector dot product result
);

    genvar gi, gj;
    integer i;

    wire [BIT_WIDTH-1:0]   a    [0:VEC_SIZE-1];  // a vector array
    wire [BIT_WIDTH-1:0]   b    [0:VEC_SIZE-1];  // b vector array
    wire [BIT_WIDTH*2-1:0] mult [0:VEC_SIZE-1];  // mult result array
    reg  [ACC_WIDTH-1:0]   acc;                  // accumulation result


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


    ////////////////
    // tree adder //
    ////////////////

    wire [ACC_WIDTH-1:0] tree_sums [0:NUM_LEVEL][0:VEC_SIZE-1];   // tree sums array (unused entries are not synthesized)

    // base
    generate
        for (gi = 0; gi < VEC_SIZE; gi = gi + 1) begin : INIT
            assign tree_sums[0][gi] = $signed(mult[gi]);
        end
    endgenerate

    // build tree
    generate
        for (gi = 0; gi < NUM_LEVEL; gi = gi + 1) begin : TREE_LEVEL
            for (gj = 0; gj < (VEC_SIZE >> (gi+1)); gj = gj + 1) begin : TREE_NODE
                assign tree_sums[gi+1][gj] = $signed(tree_sums[gi][2*gj]) + $signed(tree_sums[gi][2*gj+1]);
            end
        end
    endgenerate

    // final result
    assign o_product = tree_sums[NUM_LEVEL][0];


endmodule
