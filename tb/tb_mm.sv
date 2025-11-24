`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 500000

`include "define.v"

`ifdef pat0
    `define IN_A "./tb/pat_mm/p0_ina.dat"
    `define IN_B "./tb/pat_mm/p0_inb.dat"
    `define OUT  "./tb/pat_mm/p0_out.dat"
    `define MODE `INT4
    `define DATA_W 4
    `define VS 64
`elsif pat1
    `define IN_A "./tb/pat_mm/p1_ina.dat"
    `define IN_B "./tb/pat_mm/p1_inb.dat"
    `define OUT  "./tb/pat_mm/p1_out.dat"
    `define MODE `INT8
    `define DATA_W 8
    `define VS 32
`elsif pat2
    `define IN_A "./tb/pat_mm/p2_ina.dat"
    `define IN_B "./tb/pat_mm/p2_inb.dat"
    `define OUT  "./tb/pat_mm/p2_out.dat"
    `define MODE `INT4_VSQ
    `define DATA_W 4
    `define VS 64
`else
    `define IN_A "./tb/pat_mm/p0_ina.dat"
    `define IN_B "./tb/pat_mm/p0_inb.dat"
    `define OUT  "./tb/pat_mm/p0_out.dat"
    `define MODE `INT4
    `define DATA_W 4
    `define VS 64
`endif

`define VEC_W  264
`define DAT_W  256
`define SF_W   8
`define RAMA_D (`M / `VL) * (`K / `VS)
`define RAMB_D (`N / `VS) * `K
`define GROUP  (`M / `VL)
`define STRIDE (`K / `DATA_W)


module tb_mm;

    genvar  gi;
    integer errors;
    integer row_grp, vec, entry, col, row;


    logic clk;
    logic rst_n;

    // interface
    logic [1               :0] mode;
    logic                      start;
    logic                      tile_done;
    logic                      mtrx_done;

    logic [`VEC_W * `VL - 1:0] a_data;
    logic [`VEC_W       - 1:0] b_data;
    logic [15              :0] a_addr;
    logic [15              :0] b_addr;

    // flattened matrices
    logic [`DATA_W      - 1:0] mtrx_a      [0:`M * `K - 1];
    logic [`DATA_W      - 1:0] mtrx_b      [0:`K * `N - 1];
    logic [`ACC_W       - 1:0] mtrx_golden [0:`M * `N - 1];
    logic [`ACC_W       - 1:0] mtrx_out    [0:`M * `N - 1];

    // vars
    logic [15              :0] tile_cnt;
    logic [15              :0] tile_row;
    logic [15              :0] tile_col;
    logic [`DAT_W       - 1:0] data;
    logic [`SF_W        - 1:0] sf;


    // clk gen
    clk_gen u_clk_gen (
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
        for (gi = 0; gi < `VL; gi = gi + 1) begin: RAM_A
            ram #(
                .VEC_WIDTH ( `VEC_W ),
                .ARR_DEPTH ( `RAMA_D )
            ) ram_a (
                .i_clk   ( clk ),
                .i_rst_n ( 1'b1 ),
                .i_we    ( 1'b0 ),
                .i_addr  ( a_addr ),
                .i_data  ( `VEC_W'd0 ),
                .o_data  ( a_data[gi*`VEC_W +: `VEC_W] )
            );
        end
    endgenerate


    // B buffer
    ram #(
        .VEC_WIDTH ( `VEC_W ),
        .ARR_DEPTH ( `RAMB_D )
    ) ram_b (
        .i_clk   ( clk ),
        .i_rst_n ( 1'b1 ),
        .i_we    ( 1'b0 ),
        .i_addr  ( b_addr ),
        .i_data  ( `VEC_W'd0 ),
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
        start    = 0;
        mode     = 0;
        tile_cnt = 0;
        wait (rst_n === 1'b1);

        // start
        @(negedge clk);
        start = 1;
        mode  = `MODE;

        #(`CYCLE * 1.0);
        start = 0;
        mode  = 0;
    end


    // save each tile output
    assign tile_row = tile_cnt / (`N / `VL);
    assign tile_col = tile_cnt - (tile_row * (`N / `VL));

    always @(posedge tile_done) begin
        for (col = 0; col < `VL; col = col + 1) begin
            for (row = 0; row < `VL; row = row + 1) begin
                mtrx_out[(tile_row * `VL + row) * `N + (tile_col * `VL + col)] = u_mm_ctrl.accumulator.registers[col][row * `ACC_W +: `ACC_W];
            end
        end
        tile_cnt <= tile_cnt + 1;
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

        // load A buffers (unrolled...)
        // Bank 0
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 0 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[0].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[0].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 1
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 1 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[1].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[1].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 2
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 2 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[2].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[2].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 3
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 3 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[3].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[3].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 4
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 4 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[4].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[4].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 5
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 5 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[5].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[5].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 6
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 6 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[6].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[6].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 7
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 7 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[7].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[7].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 8
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 8 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[8].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[8].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 9
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 9 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[9].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[9].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 10
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 10 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[10].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[10].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 11
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 11 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[11].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[11].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 12
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 12 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[12].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[12].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 13
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 13 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[13].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[13].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 14
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 14 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[14].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[14].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 15
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 15 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = 0;
                RAM_A[15].ram_a.mem[row_grp * `DATA_W + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[15].ram_a.mem[row_grp * `DATA_W + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end


        // load B buffer
        for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
            for (col = 0; col < `N; col = col + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_b[(entry + vec * `VS) * `N + col];
                end
                sf = 0;
                ram_b.mem[vec * `N + col][`VEC_W - 1 -: `DAT_W] = data;
                ram_b.mem[vec * `N + col][`SF_W  - 1 -:  `SF_W] = sf;
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
