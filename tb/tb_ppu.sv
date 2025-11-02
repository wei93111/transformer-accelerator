`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 400


`ifdef pat0
    `define IN "./tb/pat_ppu/p0_in.dat"
`else
    `define IN "./tb/pat_ppu/p0_in.dat"
`endif


module tb_ppu;

    integer i;
    integer errors;
    integer data_idx;


    logic clk;
    logic rst_n;

    // interface
    logic             start;
    logic [24*16-1:0] acc_data;

    logic             ram_we;
    logic [4*16-1:0]  ram_data;
    logic [5:0]       ram_addr;

    logic             sf_valid;
    logic [40*16-1:0] sf_data;

    // data
    logic [24*16-1:0] vector_in [0:64-1];


    // clk gen (time exceed handled here)
    clk_gen u_clk_gen(
        .clk   ( clk ),
        .rst_n ( rst_n )
    );


    // ppu
    ppu u_ppu (
        .i_clk       ( clk ),
        .i_rst_n     ( rst_n ),
        .i_ppu_start ( start ),
        .i_acc_data  ( acc_data ),

        .o_ram_we    ( ram_we ),
        .o_ram_data  ( ram_data ),
        .o_ram_addr  ( ram_addr ),

        .o_sf_valid  ( sf_valid ),
        .o_sf_data   ( sf_data )
    );


    // output ram
    ram #(
        .VEC_WIDTH ( 4*16 ),   // INT4 x 16 entries
        .ARR_DEPTH ( 64 )      // 64 cols (full vector)
    ) u_ram (
        .i_clk   ( clk ),
        .i_rst_n ( rst_n ),
        .i_we    ( ram_we ),
        .i_addr  ( ram_addr ),
        .i_data  ( ram_data ),
        .o_data  ( )
    );


    // dump waveform
    initial begin
        $fsdbDumpfile("ppu.fsdb");
        $fsdbDumpvars(0, tb_ppu, "+mda");
    end


    // load data
    initial begin
        // scale factors (all ones)
        for (i = 0; i < 16; i = i + 1) begin
            u_ppu.scale_buf.registers[i] = {16{16'b0000010000000000}};
        end

        // bias (all zeros)
        for (i = 0; i < 16; i = i + 1) begin
            u_ppu.bias_buf.registers[i] = 16'd0;
        end

        // input tile
        $readmemh(`IN, vector_in);
    end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        
        // reset
        wait (rst_n === 1'b0);
        start    = 0;
        acc_data = 0;
        data_idx = 0;
        wait (rst_n === 1'b1);
        @(negedge clk);

        repeat (4) begin
            // start
            #(`CYCLE * 32.0);
            start = 1;   #(`CYCLE * 1.0);
            start = 0;
            
            // send data
            repeat (16) begin
                acc_data = vector_in[data_idx];
                #(`CYCLE * 1.0);
                data_idx = data_idx + 1;
            end
        end
    end


    // finish
    initial begin
        // output sf results
        wait (sf_valid === 1'b1);
        for (i = 0; i < 16; i = i + 1) begin
            $display("sf[%d] = %b", i, sf_data[i*40 +: 40]);
        end

        // output ram results
        #(`CYCLE * 64.0);
        for (i = 0; i < 16; i = i + 1) begin
            // output first column
            $display("ram[0][%d] = %h", i, u_ram.mem[0][i*4 +: 4]);
        end
    end

endmodule


module clk_gen (
    output logic clk,
    output logic rst_n
);

    always #(`CYCLE * 0.5) clk = ~clk;

    initial begin
        clk   = 1'b0;
        rst_n = 1'b1;   #(`CYCLE * 0.5);
        rst_n = 1'b0;   #(`CYCLE * 2.0);
        rst_n = 1'b1;   #(`CYCLE * `END_CYCLE);
        $display("Error! Time limit exceeded!");
        $finish;
    end

endmodule
