`timescale 1ns / 1ps
`define CYCLE 10.0
`define END_CYCLE 1000000


`ifdef pat0
    `define IN_A "./tb/pat/p0_ina.dat"
    `define IN_B "./tb/pat/p0_inb.dat"
    `define OUT  "./tb/pat/p0_out.dat"
    `define MODE 0  // INT8
`elsif pat1
    `define IN_A "./tb/pat/p1_ina.dat"
    `define IN_B "./tb/pat/p1_inb.dat"
    `define OUT  "./tb/pat/p1_out.dat"
    `define MODE 1  // INT4
`elsif pat2
    `define IN_A "./tb/pat/p2_ina.dat"
    `define IN_B "./tb/pat/p2_inb.dat"
    `define OUT  "./tb/pat/p2_out.dat"
    `define MODE 2  // INT4_VSQ
`else
    `define IN_A "./tb/pat/p0_ina.dat"
    `define IN_B "./tb/pat/p0_inb.dat"
    `define OUT  "./tb/pat/p0_out.dat"
    `define MODE 0
`endif


module tb_mm;


    logic clk;
    logic rst_n;

    // interface
    logic [1:0] mode;
    logic       start;
    logic       tile_done;
    logic       mtrx_done;

    // flattened matrices (raster scan indexing)
    logic [3:0]  mtrx_a      [0:512*256-1];
    logic [3:0]  mtrx_b      [0:256*512-1];
    logic [23:0] mtrx_golden [0:512*512-1];
    logic [23:0] mtrx_out    [0:512*512-1];

    // vars
    logic [9:0]   tile_cnt;
    logic [9:0]   tile_row;
    logic [9:0]   tile_col;
    logic [255:0] tmp;

    integer errors;


    // clk gen (time exceed handled here)
    clk_gen u_clk_gen(
        .clk   ( clk ),
        .rst_n ( rst_n )
    );


    // dut
    mm_ctrl dut (
        .i_clk       ( clk ),
        .i_rst_n     ( rst_n ),
        .i_mode      ( mode ),
        .i_start     ( start ),
        .o_tile_done ( tile_done ),
        .o_mtrx_done ( mtrx_done )
    );


    // dump waveform
    initial begin
        $fsdbDumpfile("mm.fsdb");
        $fsdbDumpvars(2, tb_mm, "+mda");
    end


    // load pattern
    initial begin
        $readmemh(`IN_A, mtrx_a);
        $readmemh(`IN_B, mtrx_b);
        $readmemh(`OUT, mtrx_golden);

        // load to A buffers
        for (int bank = 0; bank < 16; bank = bank + 1) begin                    // for each bank
            for (int row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin    // for each row group (512 / 16 total)
                for (int vec = 0; vec < 4; vec = vec + 1) begin                 // for each VS vector
                    for (int entry = 0; entry < 64; entry = entry + 1) begin    // flatten entries to a vector
                        tmp[entry*4 +: 4] = mtrx_a[(bank+row_grp*16)*256 + vec*64 + entry];
                    end
                    dut.A_BUF[bank].ram_a.mem[row_grp*4 + vec][263:8] = tmp;    // matrix entries
                    dut.A_BUF[bank].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;   // scale factor
                end
            end
        end

        // load to B buffer
        for (int vec = 0; vec < 4; vec = vec + 1) begin                         // for each VS vector
            for (int col = 0; col < 512; col = col + 1) begin                   // for each column
                for (int entry = 0; entry < 64; entry = entry + 1) begin        // flatten entries to a vector
                    tmp[entry*4 +: 4] = mtrx_b[(entry+vec*64)*512 + col];
                end
                dut.ram_b.mem[vec*512 + col][263:8] = tmp;                      // matrix entries
                dut.ram_b.mem[vec*512 + col][7:0]   = 8'd0;                     // scale factor
            end
        end
    end


    // stimulus
    initial begin
        $display("===============================================================================");
        $display("SIMULATION START");
        $display("===============================================================================");
        
        // reset
        wait (rst_n === 1'b0);
        start    = 1'b0;
        mode     = 2'd0;
        tile_cnt = 10'd0;
        wait (rst_n === 1'b1);

        // start
        @(posedge clk);
        start = 1'b1;
        mode  = `MODE;

        #(`CYCLE * 1.0);
        start = 1'b0;
        mode  = 2'bxx;
    end


    // finish
    initial begin
        wait (mtrx_done === 1'b1);

        #(`CYCLE * 2.0);
        $display("===============================================================================");
        $display("VERIFICATION RESULTS");
        $display("===============================================================================");

        errors = 0;
        $display("SHOW FIRST 32 OUTPUTS:")
        for(int idx = 0; idx < 512*512; idx = idx + 1) begin
            if (mtrx_out[idx] !== mtrx_golden[idx]) begin
                if (idx < 32) 
                    $display("[ERROR  ]   [%d] Calculated:%24h Golden:%24h", idx, mtrx_out[idx], mtrx_golden[idx]);
                errors = errors + 1;
            end else begin
                if (idx < 32) 
                    $display("[CORRECT]   [%d] Calculated:%24h Golden:%24h", idx, mtrx_out[idx], mtrx_golden[idx]);
            end
        end
        
        if (errors == 0) begin
            $display("");
            $display("	******************************               ");
            $display("	**                          **       |\__||  ");
            $display("	**    Congratulations !!    **      / O.O  | ");
            $display("	**                          **    /_____   | ");
            $display("	**    Simulation PASS!!     **   /^ ^ ^ \\  |");
            $display("	**                          **  |^ ^ ^ ^ |w| ");
            $display("	******************************   \\m___m__|_|");
            $display("");
        end else begin
            $display("");
            $display("	******************************               ");
            $display("	**                          **       |\__||  ");
            $display("	**    OOPS!!                **      / X,X  | ");
            $display("	**                          **    /_____   | ");
            $display("	**    Simulation Failed!!   **   /^ ^ ^ \\  |");
            $display("	**                          **  |^ ^ ^ ^ |w| ");
            $display("	******************************   \\m___m__|_|");
            $display("");
            $display("	Total of %d errors               ", errors);
        end

        #(`CYCLE * 2.0);
        $finish;
    end


    // save each tile output
    assign tile_row = tile_cnt >> 5;
    assign tile_col = tile_cnt - (tile_row * 32);

    always @(posedge tile_done) begin
        for (int col = 0; col < 16; col = col + 1) begin
            for (int row = 0; row < 16; row = row + 1) begin
                mtrx_out[(tile_row*16 + row) * 512 + (tile_col*16 + col)] = dut.acc.registers[col][row*24 +: 24];
            end
        end
        tile_cnt <= tile_cnt + 10'd1;
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
        rst_n = 1'b0;   #(`CYCLE * 1.5);
        rst_n = 1'b1;   #(`CYCLE * `END_CYCLE);
        $display("Error! Time limit exceeded!");
        $finish;
    end

endmodule
