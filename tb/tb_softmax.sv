`include "define.v"
`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 10000


`ifdef pat0
    `define IN  "./tb/pat_softmax/p0_in.dat"
    `define OUT "./tb/pat_softmax/p0_out.dat"
`elsif pat1
    `define IN  "./tb/pat_softmax/p1_in.dat"
    `define OUT "./tb/pat_softmax/p1_out.dat"
`elsif pat2
    `define IN  "./tb/pat_softmax/p2_in.dat"
    `define OUT "./tb/pat_softmax/p2_out.dat"
`else
    `define IN  "./tb/pat_softmax/p0_in.dat"
    `define OUT "./tb/pat_softmax/p0_out.dat"
`endif


module tb_softmax;

    integer i, j;
    integer data_idx, out_idx;

    // error calculation
    logic [15:0] calc_denom;
    logic [15:0] expected_denom;
    real calc_real, expected_real, error_pct;
    real total_error;


    logic clk;
    logic rst_n;

    // softmax input
    logic                 start;
    logic [40 * 16 - 1:0] data;

    // softmax output
    logic [8  * 16 - 1:0] softmax_y;
    logic [30 * 16 - 1:0] softmax_runmax;
    logic [16 * 16 - 1:0] softmax_denom;
    logic                 softmax_y_valid;
    logic                 softmax_denom_valid;

    // data storage
    logic [40 * 16 - 1:0] data_in      [0:`N-1];
    logic [8  * 16 - 1:0] y_out        [0:`N-1];
    logic [30 * 16 - 1:0] runmax_out   [0:`N-1];
    logic [16 * 16 - 1:0] expected_out [0:0];  // Expected denominator values


    // clk gen
    clk_gen u_clk_gen(
        .clk   ( clk ),
        .rst_n ( rst_n )
    );


    // softmax
    softmax u_softmax (
        .i_clk         ( clk ),
        .i_rst_n       ( rst_n ),
        .i_start       ( start ),
        .i_data        ( data ),
        .o_y           ( softmax_y ),
        .o_runmax      ( softmax_runmax ),
        .o_denom       ( softmax_denom ),
        .o_y_valid     ( softmax_y_valid ),
        .o_denom_valid ( softmax_denom_valid )
    );


    // dump waveform
    initial begin
        $fsdbDumpfile("softmax.fsdb");
        $fsdbDumpvars(0, tb_softmax, "+mda");
    end


    // load data
    initial begin
        $readmemh(`IN, data_in);
        $readmemh(`OUT, expected_out);
    end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        
        // reset
        wait (rst_n === 1'b0);
        start    = 0;
        data     = 0;
        data_idx = 0;
        out_idx  = 0;
        wait (rst_n === 1'b1);
        @(negedge clk);

        repeat (`N / 16) begin
            // start
            #(`CYCLE * 32.0);
            start = 1;   #(`CYCLE * 1.0);
            start = 0;
            
            // send data
            repeat (16) begin
                data = data_in[data_idx];
                #(`CYCLE * 1.0);
                data_idx = data_idx + 1;
            end
        end
    end


    // store y, runmax results
    initial begin
        repeat (`N / 16) begin
            @(posedge softmax_y_valid);
            @(negedge clk);

            repeat (16) begin
                if (softmax_y_valid === 1'b1) begin
                    y_out[out_idx]      = softmax_y;
                    runmax_out[out_idx] = softmax_runmax;
                    #(`CYCLE * 1.0);
                    out_idx = out_idx + 1;
                end
            end
        end
    end


    // finish, calculate denominator error
    initial begin
        
        wait (softmax_denom_valid === 1'b1);
        #(`CYCLE * 10.0);

        $display("=============================================================================");
        $display("Softmax Denominator Comparison (Q9.7 format)");
        $display("=============================================================================");
        $display("");
        
        total_error = 0.0;
        
        // Compare all 16 lanes
        for (i = 0; i < 16; i = i + 1) begin
            // Extract calculated and expected values for this lane
            // Lane 0 (LSB) is row 1, Lane 15 (MSB) is row 16
            calc_denom = softmax_denom[i*16 +: 16];
            expected_denom = expected_out[0][i*16 +: 16];
            
            // Convert to real for error calculation
            calc_real = $itor(calc_denom) / 128.0;
            expected_real = $itor(expected_denom) / 128.0;
            
            // Calculate error percentage
            if (expected_real != 0.0) begin
                error_pct = ((calc_real - expected_real) / expected_real) * 100.0;
            end else begin
                error_pct = 0.0;
            end
            
            // Accumulate absolute error for total
            if (error_pct < 0.0) begin
                total_error = total_error + (-error_pct);
            end else begin
                total_error = total_error + error_pct;
            end
            
            // Display results
            $display("Lane %2d (Row %2d):", i, i+1);
            $display("  Calculated: %b (decimal: %0d, float: %f)", calc_denom, calc_denom, calc_real);
            $display("  Expected:   %b (decimal: %0d, float: %f)", expected_denom, expected_denom, expected_real);
            $display("  Error:      %f%%", error_pct);
            $display("");
        end
        
        $display("=============================================================================");
        $display("Summary:");
        $display("  Total Lanes:        16");
        $display("  Total Error:        %f%%", total_error);
        $display("  Average Error:      %f%%", total_error / 16.0);
        $display("=============================================================================");
        $display("");

        $finish;
    end

endmodule


module clk_gen (
    output logic clk,
    output logic rst_n
);

    always #(`CYCLE * 0.5) clk = ~clk;

    initial begin
        clk   = 0;
        rst_n = 1;   #(`CYCLE * 0.5);
        rst_n = 0;   #(`CYCLE * 2.0);
        rst_n = 1;   #(`CYCLE * `END_CYCLE);
        $display("Error! Time limit exceeded!");
        $finish;
    end

endmodule
