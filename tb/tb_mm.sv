`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 500000

`include "define.v"


`ifdef pat0
    `define IN_A "./tb/pat_mm/p0_ina.dat"
    `define IN_B "./tb/pat_mm/p0_inb.dat"
    `define OUT  "./tb/pat_mm/p0_out.dat"
    `define MODE `INT4
    `define WIDTH 4
`elsif pat1
    `define IN_A "./tb/pat_mm/p1_ina.dat"
    `define IN_B "./tb/pat_mm/p1_inb.dat"
    `define OUT  "./tb/pat_mm/p1_out.dat"
    `define MODE `INT8
    `define WIDTH 8
`elsif pat2
    `define IN_A "./tb/pat_mm/p2_ina.dat"
    `define IN_B "./tb/pat_mm/p2_inb.dat"
    `define OUT  "./tb/pat_mm/p2_out.dat"
    `define MODE `INT4_VSQ
    `define WIDTH 4
`else
    `define IN_A "./tb/pat_mm/p0_ina.dat"
    `define IN_B "./tb/pat_mm/p0_inb.dat"
    `define OUT  "./tb/pat_mm/p0_out.dat"
    `define MODE `INT4
    `define WIDTH 4
`endif


module tb_mm;

    genvar  gi;
    integer errors;
    integer row_grp, vec, entry, col, row;


    logic clk;
    logic rst_n;

    // interface
    logic [1:0]            mode;
    logic                  start;
    logic                  tile_done;
    logic                  mtrx_done;

    logic [7:0]            a_addr;
    logic [264 * 16 - 1:0] a_data;   // 264 x 16 banks
    logic [11:0]           b_addr;
    logic [264 - 1:0]      b_data;   // 264 x 1 bank

    // flattened matrices (raster scan indexing)
    logic [`WIDTH - 1:0]   mtrx_a      [0:`M * `K - 1];
    logic [`WIDTH - 1:0]   mtrx_b      [0:`K * `N - 1];
    logic [24 - 1:0]       mtrx_golden [0:`M * `N - 1];
    logic [24 - 1:0]       mtrx_out    [0:`M * `N - 1];

    // vars
    logic [9:0]            tile_cnt;
    logic [9:0]            tile_row;
    logic [9:0]            tile_col;
    logic [255:0]          tmp;


    // clk gen
    clk_gen u_clk_gen(
        .clk   ( clk ),
        .rst_n ( rst_n )
    );


    // mm_ctrl
    mm_ctrl u_mm_ctrl (
        .i_clk       ( clk ),
        .i_rst_n     ( rst_n ),
        .i_mode      ( mode ),
        .i_start     ( start ),

        .i_a_data    ( a_data ),
        .i_b_data    ( b_data ),
        .o_a_addr    ( a_addr ),
        .o_b_addr    ( b_addr ),

        .o_tile_done ( tile_done ),
        .o_mtrx_done ( mtrx_done ),
        
        .o_ppu_start ( ),
        .o_acc_data  ( ),
        .o_mode      ( )
    );


    // A buffers
    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin: A_BUF
            ram #(
                .VEC_WIDTH ( 264 ),
                .ARR_DEPTH ( 256 )
            ) ram_a (
                .i_clk   ( clk ),
                .i_rst_n ( 1'b1 ),
                .i_we    ( 1'b0 ),
                .i_addr  ( a_addr ),
                .i_data  ( 264'd0 ),
                .o_data  ( a_data[gi*264 +: 264] )
            );
        end
    endgenerate


    // B buffer
    ram #(
        .VEC_WIDTH ( 264 ),
        .ARR_DEPTH ( 4096 )
    ) ram_b (
        .i_clk   ( clk ),
        .i_rst_n ( 1'b1 ),
        .i_we    ( 1'b0 ),
        .i_addr  ( b_addr ),
        .i_data  ( 264'd0 ),
        .o_data  ( b_data )
    );


    // // dump waveform
    // initial begin
    //     $fsdbDumpfile("mm.fsdb");
    //     $fsdbDumpvars(1, tb_mm, "+mda");
    // end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        
        // reset
        wait (rst_n === 1'b0);
        start    = 1'b0;
        mode     = 2'd0;
        tile_cnt = 10'd0;
        wait (rst_n === 1'b1);

        // start
        @(negedge clk);
        start = 1'b1;
        mode  = `MODE;

        #(`CYCLE * 1.0);
        start = 1'b0;
        mode  = 2'bxx;
    end


    // save each tile output
    assign tile_row = tile_cnt >> 5;
    assign tile_col = tile_cnt - (tile_row * 32);

    always @(posedge tile_done) begin
        for (integer col = 0; col < 16; col = col + 1) begin
            for (integer row = 0; row < 16; row = row + 1) begin
                mtrx_out[(tile_row*16 + row) * 512 + (tile_col*16 + col)] = u_mm_ctrl.accumulator.registers[col][row*24 +: 24];
            end
        end
        tile_cnt <= tile_cnt + 10'd1;
    end


    // finish
    initial begin
        wait (mtrx_done === 1'b1);
        #(`CYCLE * 10.0);

        $display("==================================================================");
        $display("Simulation Results");
        $display("==================================================================");

        $display("");
        $display("First 32 outputs:\n");

        errors = 0;
        for (integer idx = 0; idx < `M * `N; idx = idx + 1) begin
            if (mtrx_out[idx] !== mtrx_golden[idx]) begin
                errors = errors + 1;
                if (idx < 32) $display("[ERROR  ] [%d] Calculated:%24h Golden:%24h", idx, mtrx_out[idx], mtrx_golden[idx]);
            end else begin
                if (idx < 32) $display("[CORRECT] [%d] Calculated:%24h Golden:%24h", idx, mtrx_out[idx], mtrx_golden[idx]);
            end
        end
        
        if (errors == 0) begin
            $display("");
            $display("	//////////////////////////////               ");
            $display("	//                          //       |\__||  ");
            $display("	//    Congratulations !!    //      / O.O  | ");
            $display("	//                          //    /_____   | ");
            $display("	//    Simulation PASS!!     //   /^ ^ ^ \\  |");
            $display("	//                          //  |^ ^ ^ ^ |w| ");
            $display("	//////////////////////////////   \\m___m__|_|");
            $display("");
        end else begin
            $display("");
            $display("	//////////////////////////////               ");
            $display("	//                          //       |\__||  ");
            $display("	//    OOPS!!                //      / X,X  | ");
            $display("	//                          //    /_____   | ");
            $display("	//    Simulation Failed!!   //   /^ ^ ^ \\  |");
            $display("	//                          //  |^ ^ ^ ^ |w| ");
            $display("	//////////////////////////////   \\m___m__|_|");
            $display("");
            $display("	Total of %d errors               ", errors);
        end

        $finish;
    end


    // load pattern
    initial begin
        $readmemh(`IN_A, mtrx_a);
        $readmemh(`IN_B, mtrx_b);
        $readmemh(`OUT, mtrx_golden);

        // load to A and B buffers
        if (`MODE == `INT8) begin
            // INT8

            // --- A buffers ---
            // Bank 0
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 0 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[0].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[0].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 1
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 1 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[1].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[1].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 2
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 2 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[2].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[2].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 3
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 3 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[3].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[3].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 4
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 4 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[4].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[4].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 5
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 5 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[5].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[5].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 6
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 6 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[6].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[6].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 7
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 7 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[7].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[7].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 8
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 8 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[8].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[8].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 9
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 9 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[9].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[9].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 10
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 10 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[10].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[10].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 11
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 11 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[11].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[11].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 12
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 12 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[12].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[12].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 13
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 13 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[13].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[13].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 14
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 14 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[14].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[14].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 15
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 15 + row_grp * 16;
                for (vec = 0; vec < 8; vec = vec + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_a[row*256 + vec*32 + entry];
                    end
                    A_BUF[15].ram_a.mem[row_grp*8 + vec][263:8] = tmp;
                    A_BUF[15].ram_a.mem[row_grp*8 + vec][7:0]   = 8'd0;
                end
            end

            // --- B buffer ---
            for (vec = 0; vec < 8; vec = vec + 1) begin
                for (col = 0; col < 512; col = col + 1) begin
                    for (entry = 0; entry < 32; entry = entry + 1) begin
                        tmp[entry*8 +: 8] = mtrx_b[(entry + vec*32)*512 + col];
                    end
                    ram_b.mem[vec*512 + col][263:8] = tmp;
                    ram_b.mem[vec*512 + col][7:0]   = 8'd0;
                end
            end

        end else begin
            // INT4

            // --- A buffers ---
            // Bank 0
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 0 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[0].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[0].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 1
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 1 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[1].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[1].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 2
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 2 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[2].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[2].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 3
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 3 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[3].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[3].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 4
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 4 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[4].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[4].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 5
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 5 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[5].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[5].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 6
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 6 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[6].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[6].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 7
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 7 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[7].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[7].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 8
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 8 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[8].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[8].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 9
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 9 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[9].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[9].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 10
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 10 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[10].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[10].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 11
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 11 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[11].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[11].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 12
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 12 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[12].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[12].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 13
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 13 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[13].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[13].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 14
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 14 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[14].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[14].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // Bank 15
            for (row_grp = 0; row_grp < 32; row_grp = row_grp + 1) begin
                row = 15 + row_grp * 16;
                for (vec = 0; vec < 4; vec = vec + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_a[row*256 + vec*64 + entry][3:0];
                    end
                    A_BUF[15].ram_a.mem[row_grp*4 + vec][263:8] = tmp;
                    A_BUF[15].ram_a.mem[row_grp*4 + vec][7:0]   = 8'd0;
                end
            end

            // --- B buffer ---
            for (vec = 0; vec < 4; vec = vec + 1) begin
                for (col = 0; col < 512; col = col + 1) begin
                    for (entry = 0; entry < 64; entry = entry + 1) begin
                        tmp[entry*4 +: 4] = mtrx_b[(entry + vec*64)*512 + col][3:0];
                    end
                    ram_b.mem[vec*512 + col][263:8] = tmp;
                    ram_b.mem[vec*512 + col][7:0]   = 8'd0;
                end
            end
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
