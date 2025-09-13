`define timescale 1ns/1ps

module tb;

    logic clk;
    logic rst_n;

    initial begin
        clk = 0;
        rst_n = 0;
    end

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1;
    end

    initial begin
        $display("Starting testbench");
        #1000 $finish;
    end
endmodule