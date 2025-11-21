`include "define.v"

module softmax (
    input                  i_clk,
    input                  i_rst_n,
    input                  i_start,
    input  [40 * 16 - 1:0] i_data,
    output [8  * 16 - 1:0] o_y,
    output [30 * 16 - 1:0] o_runmax,
    output [16 * 16 - 1:0] o_denom,
    output                 o_y_valid,
    output                 o_denom_valid
);

    integer i;


    // states
    localparam S_IDLE = 1'b0;
    localparam S_BUSY = 1'b1;


    // ctrl
    reg                   state_w,       state_r;
    reg  [3:0]            acc_cnt_w,     acc_cnt_r;
    reg  [$clog2(`N)-1:0] row_cnt_w,     row_cnt_r;
    reg                   y_valid_w,     y_valid_r;
    reg                   denom_valid_w, denom_valid_r;

    // softmax
    reg  [29:0] data_rnd [0:15];    // Q30.0 signed
    reg  [29:0] runmax_w [0:15];
    reg  [29:0] runmax_r [0:15];    // Q30.0 signed
    reg  [15:0] denom_w  [0:15];
    reg  [15:0] denom_r  [0:15];    // Q9.7 unsigned
    reg  [7:0]  y_w      [0:15];
    reg  [7:0]  y_r      [0:15];    // Q1.7 unsigned


    assign o_y           = {y_r[15],      y_r[14],      y_r[13],      y_r[12],      y_r[11],      y_r[10],      y_r[9],      y_r[8],      y_r[7],      y_r[6],      y_r[5],      y_r[4],      y_r[3],      y_r[2],      y_r[1],      y_r[0]};
    assign o_runmax      = {runmax_r[15], runmax_r[14], runmax_r[13], runmax_r[12], runmax_r[11], runmax_r[10], runmax_r[9], runmax_r[8], runmax_r[7], runmax_r[6], runmax_r[5], runmax_r[4], runmax_r[3], runmax_r[2], runmax_r[1], runmax_r[0]};
    assign o_denom       = {denom_r[15],  denom_r[14],  denom_r[13],  denom_r[12],  denom_r[11],  denom_r[10],  denom_r[9],  denom_r[8],  denom_r[7],  denom_r[6],  denom_r[5],  denom_r[4],  denom_r[3],  denom_r[2],  denom_r[1],  denom_r[0]};
    assign o_y_valid     = y_valid_r;
    assign o_denom_valid = denom_valid_r;


    //////////
    // ctrl //
    //////////

    always @(*) begin

        denom_valid_w = 0;

        state_w       = state_r;
        acc_cnt_w     = acc_cnt_r;
        row_cnt_w     = row_cnt_r;

        case (state_r)
            S_IDLE: begin
                if (i_start) begin
                    state_w = S_BUSY;
                end
            end
            S_BUSY: begin
                // acc cnt
                if (acc_cnt_r == 15) begin
                    acc_cnt_w = 0;
                    state_w   = S_IDLE;
                end else begin
                    acc_cnt_w = acc_cnt_r + 1;
                    state_w   = S_BUSY;
                end

                // row cnt
                if (row_cnt_r == `N-1) begin
                    row_cnt_w     = 0;
                    denom_valid_w = 1;
                end else begin
                    row_cnt_w     = row_cnt_r + 1;
                    denom_valid_w = 0;
                end
            end
        endcase
    end

    // y valid (1 cycle delay after data input)
    always @(*) begin

        y_valid_w = y_valid_r;

        case (state_r)
            S_IDLE: begin
                y_valid_w = 0;
            end
            S_BUSY: begin
                y_valid_w = 1;
            end
        endcase
    end


    /////////////
    // softmax //
    /////////////

    always @(*) begin

        for (i = 0; i < 16; i = i + 1) runmax_w[i] = runmax_r[i];
        for (i = 0; i < 16; i = i + 1) y_w[i]      = y_r[i];
        for (i = 0; i < 16; i = i + 1) denom_w[i]  = denom_r[i];

        case (state_r)
            S_IDLE: begin
                if (i_start) begin
                    // reset denom and runmax before each row
                    if (row_cnt_r == 0) begin
                        for (i = 0; i < 16; i = i + 1) runmax_w[i] = 0;
                        for (i = 0; i < 16; i = i + 1) denom_w[i]  = 0;
                    end
                end
            end
            S_BUSY: begin
                // 16 lanes
                for (i = 0; i < 16; i = i + 1) begin
                    // round data to Q30.0
                    data_rnd[i] = round(i_data[i*40 +: 40]);

                    if ($signed(data_rnd[i]) > $signed(runmax_r[i])) begin
                        // update runmax
                        runmax_w[i] = data_rnd[i];
                        y_w[i]      = 8'b10000000;
                        denom_w[i]  = (denom_r[i] >> ($signed(data_rnd[i]) - $signed(runmax_r[i]))) + {8'd0, y_w[i]};
                    end else begin
                        // keep runmax
                        runmax_w[i] = runmax_r[i];
                        y_w[i]      = 8'b10000000 >> ($signed(runmax_r[i]) - $signed(data_rnd[i]));
                        denom_w[i]  = denom_r[i] + {8'd0, y_w[i]};
                    end
                end
            end
        endcase
    end

    // round Q30.10 -> Q30.0
    function automatic [29:0] round;
        input [39:0] data;

        reg [39:0] data_abs;
        reg [39:0] data_abs_rnd;
        reg [29:0] data_rnd;
        
        begin
            data_abs     = (data[39])    ? ~data + 40'd1 : data;                                // Q30.10
            data_abs_rnd = (data_abs[9]) ? (data_abs >> 10) + 40'd1 : data_abs >> 10;           // Q40.0
            data_rnd     = (data[39])    ? ~data_abs_rnd[29:0] + 30'd1 : data_abs_rnd[29:0];    // Q40.0 -> Q30.0
            round        = data_rnd;
        end
    endfunction


    ////////////////
    // sequential //
    ////////////////

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= 0;
            for (i = 0; i < 16; i = i + 1) y_r[i]      <= 0;
            for (i = 0; i < 16; i = i + 1) denom_r[i]  <= 0;
            state_r       <= S_IDLE;
            acc_cnt_r     <= 0;
            row_cnt_r     <= 0;
            y_valid_r     <= 0;
            denom_valid_r <= 0;
        end else begin
            for (i = 0; i < 16; i = i + 1) runmax_r[i] <= runmax_w[i];
            for (i = 0; i < 16; i = i + 1) y_r[i]      <= y_w[i];
            for (i = 0; i < 16; i = i + 1) denom_r[i]  <= denom_w[i];
            state_r       <= state_w;
            acc_cnt_r     <= acc_cnt_w;
            row_cnt_r     <= row_cnt_w;
            y_valid_r     <= y_valid_w;
            denom_valid_r <= denom_valid_w;
        end
    end

endmodule
