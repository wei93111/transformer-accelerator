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


module tb_reciprocal;

    integer i;


    // reciprocal input
    logic [17:0] data;

    // reciprocal output
    logic [35:0] recip;


    // clk gen
    clk_gen u_clk_gen(
        .clk   ( clk ),
        .rst_n ( rst_n )
    );


    // reciprocal
    reciprocal u_reciprocal (
        .i_data  ( data ),
        .o_recip ( recip )
    );


    // dump waveform
    initial begin
        $fsdbDumpfile("reciprocal.fsdb");
        $fsdbDumpvars(0, tb_reciprocal, "+mda");
    end


    // load data
    // initial begin
    //     $readmemh(`IN, data_in);
    //     $readmemh(`OUT, expected_out);
    // end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        data = 18'b000000000000000100;
        #(`CYCLE * 10.0);
        $display("recip = %b", recip);
        $finish;
    end


    // // finish, calculate denominator error
    // initial begin
        
    //     wait (softmax_denom_valid === 1'b1);
    //     #(`CYCLE * 10.0);

    //     $display("=============================================================================");
    //     $display("Softmax Denominator Comparison (Q9.7 format)");
    //     $display("=============================================================================");
    //     $display("");
        
    //     total_error = 0.0;
        
    //     // Compare all 16 lanes
    //     for (i = 0; i < 16; i = i + 1) begin
    //         // Extract calculated and expected values for this lane
    //         // Lane 0 (LSB) is row 1, Lane 15 (MSB) is row 16
    //         calc_denom = softmax_denom[i*16 +: 16];
    //         expected_denom = expected_out[0][i*16 +: 16];
            
    //         // Convert to real for error calculation
    //         calc_real = $itor(calc_denom) / 128.0;
    //         expected_real = $itor(expected_denom) / 128.0;
            
    //         // Calculate error percentage
    //         if (expected_real != 0.0) begin
    //             error_pct = ((calc_real - expected_real) / expected_real) * 100.0;
    //         end else begin
    //             error_pct = 0.0;
    //         end
            
    //         // Accumulate absolute error for total
    //         if (error_pct < 0.0) begin
    //             total_error = total_error + (-error_pct);
    //         end else begin
    //             total_error = total_error + error_pct;
    //         end
            
    //         // Display results
    //         $display("Lane %2d (Row %2d):", i, i+1);
    //         $display("  Calculated: %b (decimal: %0d, float: %f)", calc_denom, calc_denom, calc_real);
    //         $display("  Expected:   %b (decimal: %0d, float: %f)", expected_denom, expected_denom, expected_real);
    //         $display("  Error:      %f%%", error_pct);
    //         $display("");
    //     end
        
    //     $display("=============================================================================");
    //     $display("Summary:");
    //     $display("  Total Lanes:        16");
    //     $display("  Total Error:        %f%%", total_error);
    //     $display("  Average Error:      %f%%", total_error / 16.0);
    //     $display("=============================================================================");
    //     $display("");

    //     $finish;
    // end

endmodule
