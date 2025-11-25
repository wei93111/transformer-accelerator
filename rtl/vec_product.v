`include "define.v"

module vec_product #(
    parameter DATA_W = 4,
    parameter RES_W  = 14,
    parameter VS     = 64,
    parameter LEVEL  = $clog2(VS)
)(
    input  [`DAT_W - 1:0] i_a,
    input  [`DAT_W - 1:0] i_b,
    output [RES_W  - 1:0] o_product
);

    genvar gi, gj;


    reg [DATA_W     - 1:0] a         [0:VS - 1];
    reg [DATA_W     - 1:0] b         [0:VS - 1];
    reg [DATA_W * 2 - 1:0] mult      [0:VS - 1];
    reg [RES_W      - 1:0] tree_sums [0: LEVEL][0:VS - 1];


    // unpack input
    generate
        for (gi = 0; gi < VS; gi = gi + 1) begin: UNPACK
            always @(*) begin
                a[gi] = i_a[gi * DATA_W +: DATA_W];
                b[gi] = i_b[gi * DATA_W +: DATA_W];
            end
        end
    endgenerate


    // multiply elements
    generate
        for (gi = 0; gi < VS; gi = gi + 1) begin: MULT
            always @(*) begin
                mult[gi] = $signed(a[gi]) * $signed(b[gi]);
            end
        end
    endgenerate


    ////////////////
    // tree adder //
    ////////////////

    // base
    generate
        for (gi = 0; gi < VS; gi = gi + 1) begin : INIT
            always @(*) begin
                tree_sums[0][gi] = $signed(mult[gi]);
            end
        end
    endgenerate

    // build tree
    generate
        for (gi = 0; gi < LEVEL; gi = gi + 1) begin : TREE_LEVEL
            for (gj = 0; gj < (VS >> (gi + 1)); gj = gj + 1) begin : TREE_NODE
                always @(*) begin
                    tree_sums[gi + 1][gj] = $signed(tree_sums[gi][2 * gj]) + $signed(tree_sums[gi][2 * gj + 1]);
                end
            end
        end
    endgenerate

    // final result
    assign o_product = tree_sums[LEVEL][0];

endmodule
