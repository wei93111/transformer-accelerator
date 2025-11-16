`include "define.v"
`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 10000


`ifdef pat0
    `define IN "./tb/pat_softmax/p0_in.dat"
`elsif pat1
    `define IN "./tb/pat_softmax/p1_in.dat"
`else
    `define IN "./tb/pat_softmax/p0_in.dat"
`endif


module tb_softmax;

    integer i, j;
    integer data_idx;


    logic clk;
    logic rst_n;

    // softmax input
    logic                 start;
    logic [40 * 16 - 1:0] data;

    // softmax output
    logic [8  * 16 - 1:0] softmax_y;
    logic [30 * 16 - 1:0] softmax_runmax;
    logic [9  * 16 - 1:0] softmax_denom;
    logic                 softmax_y_valid;
    logic                 softmax_denom_valid;

    // data storage
    logic [40 * 16 - 1:0] data_in    [0:`N-1];
    logic [8  * 16 - 1:0] y_out      [0:`N-1];
    logic [30 * 16 - 1:0] runmax_out [0:`N-1];


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
    end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        
        // reset
        wait (rst_n === 1'b0);
        start    = 0;
        data     = 0;
        data_idx = 0;
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
                    y_out[data_idx]      = softmax_y;
                    runmax_out[data_idx] = softmax_runmax;
                    #(`CYCLE * 1.0);
                    data_idx = data_idx + 1;
                end
            end
        end
    end


    // output softmax results after row finished
    initial begin
        wait (softmax_denom_valid === 1'b1);

        $display("y results first lane (Q1.7):");
        for (i = 0; i < `N; i = i + 1) begin
            $display("y[%d] = %b", i, y_out[i][7:0]);
        end

        $display("runmax results first lane (Q30.0):");
        for (i = 0; i < `N; i = i + 1) begin
            $display("runmax[%d] = %b", i, runmax_out[i][29:0]);
        end

        $display("denom results first lane (Q2.7):");
        $display("denom = %b", softmax_denom[8:0]);

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
