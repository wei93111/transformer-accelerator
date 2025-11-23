`define CYCLE 10.0


`ifdef pat0
    `define IN  "./tb/pat_reciprocal/p0_in.dat"
    `define OUT "./tb/pat_reciprocal/p0_out.dat"
`elsif pat1
    `define IN  "./tb/pat_reciprocal/p1_in.dat"
    `define OUT "./tb/pat_reciprocal/p1_out.dat"
`elsif pat2
    `define IN  "./tb/pat_reciprocal/p2_in.dat"
    `define OUT "./tb/pat_reciprocal/p2_out.dat"
`else
    `define IN  "./tb/pat_reciprocal/p0_in.dat"
    `define OUT "./tb/pat_reciprocal/p0_out.dat"
`endif


module tb_reciprocal;


    integer i;
    integer fd;
    real total_abs_pct_error;
    real calc_real;
    real expected_real;
    real error_pct;


    localparam N = 1024;


    // reciprocal io
    logic [17:0] data;
    logic [35:0] recip;

    // data storage
    logic [17:0] data_in           [0:N-1];
    logic [35:0] recip_out         [0:N-1];
    real         recip_golden_real [0:N-1];


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
    initial begin
        $readmemh(`IN,  data_in);
        fd = $fopen(`OUT, "r");
        for (i = 0; i < N; i = i + 1) begin
            void'($fscanf(fd, "%f\n", recip_golden_real[i]));
        end
        $fclose(fd);
    end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        i = 0;

        // input data and store output
        repeat (N) begin
            data = data_in[i];
            #(`CYCLE * 1.0);
            recip_out[i] = recip;
            i = i + 1;
        end

        // check error against golden
        total_abs_pct_error = 0.0;

        $display("============================================");
        $display("Per-sample error (N = %0d)", N);
        $display("Format: idx: calc(real) exp(real) err%%");
        $display("============================================");

        for (i = 0; i < N; i = i + 1) begin
            // Convert Q2.34 fixed-point to real
            calc_real     = $itor(recip_out[i])    / 17179869184.0; // 2^34
            expected_real = recip_golden_real[i];

            if (expected_real != 0.0) begin
                error_pct = ((calc_real - expected_real) / expected_real) * 100.0;
            end else begin
                error_pct = 0.0;
            end

            // accumulate absolute percentage error
            if (error_pct < 0.0) begin
                total_abs_pct_error = total_abs_pct_error + (-error_pct);
            end else begin
                total_abs_pct_error = total_abs_pct_error + error_pct;
            end

            // print per-sample error
            $display("idx %4d: calc=%0.10f exp=%0.10f err=%0.6f%%", i, calc_real, expected_real, error_pct);
        end

        $display("============================================");
        $display("Total absolute error: %0.6f%%", total_abs_pct_error);
        $display("Average absolute error: %0.6f%%", total_abs_pct_error / N);
        $display("============================================\n");

        $finish;
    end

endmodule
