`timescale 1ns / 1ps
`define CYCLE 2.0
`define IN_DELAY 0.50
`define OUT_DELAY 0.50
`define END_CYCLE 100000000


// `ifdef pat0
//     `define IN_A "./tb/pat/p0_ina.dat"
//     `define IN_B "./tb/pat/p0_inb.dat"
//     `define OUT  "./tb/pat/p0_out.dat"
//     `define MODE 0  // INT8
// `elsif pat1
//     `define IN_A "./tb/pat/p1_ina.dat"
//     `define IN_B "./tb/pat/p1_inb.dat"
//     `define OUT  "./tb/pat/p1_out.dat"
//     `define MODE 1  // INT4
// `elsif pat2
//     `define IN_A "./tb/pat/p2_ina.dat"
//     `define IN_B "./tb/pat/p2_inb.dat"
//     `define OUT  "./tb/pat/p2_out.dat"
//     `define MODE 2  // INT4_VSQ
// `else
//     `define IN_A "./tb/pat/p0_ina.dat"
//     `define IN_B "./tb/pat/p0_inb.dat"
//     `define OUT  "./tb/pat/p0_out.dat"
//     `define MODE 0
// `endif

`ifdef pat1
    `define IN_A "./tb/pat/p1_ina.dat"
    `define IN_B "./tb/pat/p1_inb.dat"
    `define OUT  "./tb/pat/p1_out.dat"
    `define MODE 1  // INT4
`endif


module testbench;


    logic clk;
    logic rst_n;

    logic [1:0] mode;
    logic       start;
    logic       tile_done;
    logic       mtrx_done;

    // flattened matrices (raster scan indexing)
    logic [3:0]  mtrx_a   [0:512*256-1];
    logic [3:0]  mtrx_b   [0:256*512-1];
    logic [23:0] mtrx_out [0:512*512-1];

    logic [255:0] tmp;


    // dut
    mm_ctrl dut (
        .i_clk       ( clk ),
        .i_rst_n     ( rst_n ),
        .i_mode      ( mode ),
        .i_start     ( start ),
        .o_tile_done ( tile_done ),
        .o_mtrx_done ( mtrx_done )
    );


    // clk gen
    always #(`CYCLE * 0.50) begin
        clk = ~clk;
    end


    // dump waveform
    initial begin
        $fsdbDumpfile("tb_mm.fsdb");
        $fsdbDumpvars;
        $fsdbDumpMDA;
    end


    // load pattern
    initial begin
        $readmemh(`IN_A, mtrx_a);
        $readmemh(`IN_B, mtrx_b);
        $readmemh(`OUT, mtrx_out);

        // load to A buffers
        for (int bank = 0; bank < 16; bank = bank + 1) begin                    // for each bank
            for (int row = 0; row < 32; row = row + 1) begin                    // for each row idx (512 / 16 total)
                for (int vec = 0; vec < 4; vec = vec + 1) begin                 // for each VS vector
                    for (int entry = 0; entry < 64; entry = entry + 1) begin    // flatten entries to vector
                        tmp[entry*4 +: 4] = mtrx_a[(bank+row*16)*256 + vec*64 + entry];
                    end
                    dut.A_BUF[bank].ram_a.mem[row*4 + vec][263:8] = tmp;        // matrix entries
                    dut.A_BUF[bank].ram_a.mem[row*4 + vec][7:0]   = 8'd0;       // scale factor
                end
            end
        end

        // load to B buffer
        for (int vec = 0; vec < 4; vec = vec + 1) begin
            for (int col = 0; col < 512; col = col + 1) begin
                for (int entry = 0; entry < 64; entry = entry + 1) begin
                    // tmp[entry*4 +: 4] = mtrx_b[entry];
                end
            end
        end
    end


    // stimulus
    initial begin
        $display("-------------------------------------------------------------\n");
        $display("SIMULATION START\n");
        $display("-------------------------------------------------------------\n");

        // init rst
        clk   = 0;
        rst_n = 1;

        #(`CYCLE * 1.0);
        rst_n = 0;

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


    // TODO: check result
    // initial begin
    //     $readmemb(`OUT, golden);
    //     if (tile_done) begin
    //         for (int i = 0; i < 1024; i = i + 1) begin
    //             if (dut.acc.registers[i] != golden[i]) begin
    //                 $display("Error at address %d:   Result: %d   Golden: %d", i, dut.acc.registers[i], golden[i]);
    //                 $finish;
    //             end
    //         end
    //     end
    // end


endmodule
