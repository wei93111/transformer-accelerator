`timescale 1ns / 1ps
`define CYCLE 2.0
`define IN_DELAY 0.50
`define OUT_DELAY 0.50
`define END_CYCLE 100000000


`ifdef pat0
    `define IN  "./tb/pattern/p0_input.dat"
    `define OUT "./tb/pattern/p0_output.dat"
    `define MODE 0  // INT8
`elsif pat1
    `define IN  "./tb/pattern/p1_input.dat"
    `define OUT "./tb/pattern/p1_output.dat"
    `define MODE 1  // INT4
`elsif pat2
    `define IN  "./tb/pattern/p2_input.dat"
    `define OUT "./tb/pattern/p2_output.dat"
    `define MODE 2  // INT4_VSQ
`else
    `define IN  "./tb/pattern/p0_input.dat"
    `define OUT "./tb/pattern/p0_output.dat"
    `define MODE 0
`endif


module testbench;

    reg clk;
    reg clk_start;
    reg rst_n;

    reg [1:0] mode;
    reg       start;
    reg       done;

    reg [23:0] golden [0:1023];


    // dut
    mm_ctrl dut (
        .i_clk   (clk),
        .i_rst_n (rst_n),
        .i_mode  (mode),
        .i_start (start),
        .o_done  (done)
    );


    // clk gen
    always #(`CYCLE * 0.50) begin
        if (clk_start) clk = ~clk;
    end


    // read pattern
    initial begin
        $readmemb(`IN, dut.ram_a.mem);
    end


    // dump waveform
    initial begin
        $fsdbDumpfile("tb_mm.fsdb");
        $fsdbDumpvars;
        $fsdbDumpMDA;
    end


    // stimulus
    initial begin
        $display("-------------------------------------------------------------\n");
        $display("SIMULATION START\n");
        $display("-------------------------------------------------------------\n");

        // start clk and init rst
        clk = 0;
        clk_start = 0;
        rst_n = 1;

        #(`CYCLE * 1.0);
        rst_n = 0;
        clk_start = 1;

        #(`CYCLE * 1.0);
        rst_n = 1;


        // start
        @(posedge clk);   #(`IN_DELAY);
        start = 1;
        mode  = `MODE;

        #(`CYCLE * 1.0);
        start = 0;
        mode  = 2'bxx;
    end


    // check result
    initial begin
        $readmemb(`OUT, golden);
        if (done) begin
            for (int i = 0; i < 1024; i = i + 1) begin
                if (dut.acc.registers[i] != golden[i]) begin
                    $display("Error at address %d:   Result: %d   Golden: %d", i, dut.acc.registers[i], golden[i]);
                    $finish;
                end
            end
        end
    end


endmodule
