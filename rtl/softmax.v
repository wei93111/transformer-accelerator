`include "define.v"

module softmax (
    input                         i_clk,
    input                         i_rst_n,

    // ctrl in
    input                         i_start,
    input  [`TRUNC_W * `VL - 1:0] i_data,
    
    // softmax out
    output [`TRUNC_W * `VL - 1:0] o_runmax,
    output [`NUMER_W * `VL - 1:0] o_numer,
    output [`DENOM_W * `VL - 1:0] o_denom,
    output                        o_numer_valid,
    output                        o_denom_valid
);

    integer i;
    genvar gi;


    // states
    localparam S_IDLE = 1'b0;
    localparam S_CALC = 1'b1;


    // ctrl
    reg                   state_w,       state_r;
    reg  [`ADDR_W  - 1:0] acc_cnt_w,     acc_cnt_r;
    reg  [`ADDR_W  - 1:0] row_cnt_w,     row_cnt_r;
    reg                   numer_valid_w, numer_valid_r;
    reg                   denom_valid_w, denom_valid_r;

    // softmax
    reg  [`TRUNC_W - 1:0] runmax_w [0:`VL - 1];
    reg  [`TRUNC_W - 1:0] runmax_r [0:`VL - 1];
    reg  [`DENOM_W - 1:0] denom_w  [0:`VL - 1];
    reg  [`DENOM_W - 1:0] denom_r  [0:`VL - 1];
    reg  [`NUMER_W - 1:0] numer_w  [0:`VL - 1];
    reg  [`NUMER_W - 1:0] numer_r  [0:`VL - 1];

    // ctrl params
    wire [`ADDR_W  - 1:0] AD = `AD;
    wire [`ADDR_W  - 1:0] N  = `N;


    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: OUTPUT
            assign o_runmax[gi*`TRUNC_W +: `TRUNC_W] = runmax_r[gi];
            assign o_numer[gi*`NUMER_W  +: `NUMER_W] = numer_r[gi];
            assign o_denom[gi*`DENOM_W  +: `DENOM_W] = denom_r[gi];
        end
    endgenerate

    assign o_numer_valid = numer_valid_r;
    assign o_denom_valid = denom_valid_r;


    //////////
    // ctrl //
    //////////

    always @(*) begin

        denom_valid_w = 1'b0;

        state_w       = state_r;
        acc_cnt_w     = acc_cnt_r;
        row_cnt_w     = row_cnt_r;
        numer_valid_w = numer_valid_r;

        case (state_r)
            S_IDLE: begin
                // start
                if (i_start) begin
                    state_w = S_CALC;
                end
 
                // y valid (1 cycle delay)
                numer_valid_w = 1'b0;
            end
            S_CALC: begin
                // acc cnt
                if (acc_cnt_r == AD - 1) begin
                    acc_cnt_w = 0;
                    state_w   = S_IDLE;
                end else begin
                    acc_cnt_w = acc_cnt_r + 1;
                    state_w   = S_CALC;
                end

                // row cnt
                if (row_cnt_r == N - 1) begin
                    row_cnt_w     = 0;
                    denom_valid_w = 1'b1;
                end else begin
                    row_cnt_w     = row_cnt_r + 1;
                    denom_valid_w = 1'b0;
                end

                // y valid (1 cycle delay)
                numer_valid_w = 1'b1;
            end
        endcase
    end


    /////////////
    // softmax //
    /////////////

    always @(*) begin

        for (i = 0; i < `VL; i = i + 1) runmax_w[i] = runmax_r[i];
        for (i = 0; i < `VL; i = i + 1) numer_w[i]  = numer_r[i];
        for (i = 0; i < `VL; i = i + 1) denom_w[i]  = denom_r[i];

        case (state_r)
            S_IDLE: begin
                if (i_start) begin
                    // reset denom and runmax before each row
                    if (row_cnt_r == 0) begin
                        for (i = 0; i < `VL; i = i + 1) runmax_w[i] = {1'b1, {(`TRUNC_W-1){1'b0}}};
                        for (i = 0; i < `VL; i = i + 1) denom_w[i]  = 0;
                    end
                end
            end
            S_CALC: begin
                for (i = 0; i < `VL; i = i + 1) begin
                    if ($signed(i_data[i * `TRUNC_W +: `TRUNC_W]) > $signed(runmax_r[i])) begin
                        // update runmax
                        runmax_w[i] = i_data[i * `TRUNC_W +: `TRUNC_W];
                        numer_w[i]  = {9'd1, 7'd0};
                        denom_w[i]  = (denom_r[i] >> ($signed(i_data[i * `TRUNC_W +: `TRUNC_W]) - $signed(runmax_r[i]))) + numer_w[i];
                    end else begin
                        // keep runmax
                        runmax_w[i] = runmax_r[i];
                        numer_w[i]  = {9'd1, 7'd0} >> ($signed(runmax_r[i]) - $signed(i_data[i * `TRUNC_W +: `TRUNC_W]));
                        denom_w[i]  = denom_r[i] + numer_w[i];
                    end
                end
            end
        endcase
    end


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state_r       <= S_IDLE;
            acc_cnt_r     <= 0;
            row_cnt_r     <= 0;
            numer_valid_r <= 0;
            denom_valid_r <= 0;
            for (i = 0; i < `VL; i = i + 1) runmax_r[i] <= 0;
            for (i = 0; i < `VL; i = i + 1) numer_r[i]  <= 0;
            for (i = 0; i < `VL; i = i + 1) denom_r[i]  <= 0;
        end else begin
            state_r       <= state_w;
            acc_cnt_r     <= acc_cnt_w;
            row_cnt_r     <= row_cnt_w;
            numer_valid_r <= numer_valid_w;
            denom_valid_r <= denom_valid_w;
            for (i = 0; i < `VL; i = i + 1) runmax_r[i] <= runmax_w[i];
            for (i = 0; i < `VL; i = i + 1) numer_r[i]  <= numer_w[i];
            for (i = 0; i < `VL; i = i + 1) denom_r[i]  <= denom_w[i];
        end
    end

endmodule
