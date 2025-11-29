`timescale 1ns / 10ps
`define CYCLE 50.0
`define END_CYCLE 500000

`include "define.v"

`ifdef pat0
    `define IN_MTRX_A "./tb/pat_mm/p0_in_mtrx_a.dat"
    `define IN_MTRX_B "./tb/pat_mm/p0_in_mtrx_b.dat"
    `define IN_SF_A   "./tb/pat_mm/p0_in_sf_a.dat"
    `define IN_SF_B   "./tb/pat_mm/p0_in_sf_b.dat"
    `define OUT_MTRX  "./tb/pat_mm/p0_out_mtrx.dat"
    `define MODE      `INT4
    `define DATA_W    `DATA4_W
    `define VS        `INT4_VS
`elsif pat1
    `define IN_MTRX_A "./tb/pat_mm/p1_in_mtrx_a.dat"
    `define IN_MTRX_B "./tb/pat_mm/p1_in_mtrx_b.dat"
    `define IN_SF_A   "./tb/pat_mm/p1_in_sf_a.dat"
    `define IN_SF_B   "./tb/pat_mm/p1_in_sf_b.dat"
    `define OUT_MTRX  "./tb/pat_mm/p1_out_mtrx.dat"
    `define MODE      `INT8
    `define DATA_W    `DATA8_W
    `define VS        `INT8_VS
`elsif pat2
    `define IN_MTRX_A "./tb/pat_mm/p2_in_mtrx_a.dat"
    `define IN_MTRX_B "./tb/pat_mm/p2_in_mtrx_b.dat"
    `define IN_SF_A   "./tb/pat_mm/p2_in_sf_a.dat"
    `define IN_SF_B   "./tb/pat_mm/p2_in_sf_b.dat"
    `define OUT_MTRX  "./tb/pat_mm/p2_out_mtrx.dat"
    `define MODE      `INT4_VSQ
    `define DATA_W    `DATA4_W
    `define VS        `INT4_VS
`else
    `define IN_MTRX_A "./tb/pat_mm/p0_in_mtrx_a.dat"
    `define IN_MTRX_B "./tb/pat_mm/p0_in_mtrx_b.dat"
    `define IN_SF_A   "./tb/pat_mm/p0_in_sf_a.dat"
    `define IN_SF_B   "./tb/pat_mm/p0_in_sf_b.dat"
    `define OUT_MTRX  "./tb/pat_mm/p0_out_mtrx.dat"
    `define MODE      `INT4
    `define DATA_W    `DATA4_W
    `define VS        `INT4_VS
`endif

`define GROUP  (`M / `VL)
`define STRIDE (`K / `VS)

`define SDF_FILE "syn/mm_ctrl/mm_ctrl_syn.sdf"


module tb_mm;

    genvar  gi;
    integer errors;
    integer group, stride, entry, col, row;


    logic                      clk;
    logic                      rst_n;

    // interface
    logic [1               :0] mode;
    logic                      start;

    logic [`VEC_W * `VL - 1:0] a_data;
    logic [`VEC_W       - 1:0] b_data;
    logic [`ADDR_W      - 1:0] a_addr;
    logic [`ADDR_W      - 1:0] b_addr;

    logic                      ppu_start;
    logic [`ACC_W * `VL - 1:0] acc_data;
    logic                      bias_req;

    logic                      tile_done;
    logic                      mtrx_done;

    // matrices (raster scan)
    logic [`DATA_W      - 1:0] mtrx_ina    [0:`M * `K       - 1];
    logic [`DATA_W      - 1:0] mtrx_inb    [0:`K * `N       - 1];
    logic [`ACC_W       - 1:0] mtrx_golden [0:`M * `N       - 1];
    logic [`ACC_W       - 1:0] mtrx_out    [0:`M * `N       - 1];

    // vec_sf in
    logic [`SF_W        - 1:0] in_sf_a     [0:`M * `K / `VS - 1];
    logic [`SF_W        - 1:0] in_sf_b     [0:`K * `N / `VS - 1];

    // vars
    logic [`ADDR_W      - 1:0] tile_cnt;
    logic [`ADDR_W      - 1:0] tile_row;
    logic [`ADDR_W      - 1:0] tile_col;
    logic [`DAT_W       - 1:0] vec_data;
    logic [`SF_W        - 1:0] vec_sf;


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
        
        .o_ppu_start ( ppu_start ),
        .o_acc_data  ( acc_data ),
        .o_bias_req  ( bias_req ),

        .o_tile_done ( tile_done ),
        .o_mtrx_done ( mtrx_done )
    );


    // A buffers
    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: RAM_A
            ram #(
                .WIDTH ( `VEC_W ),
                .DEPTH ( (`M / `VL) * (`K / `VS) )
            ) u_ram_a (
                .i_clk   ( clk ),
                .i_rst_n ( '1 ),
                .i_we    ( '0 ),
                .i_addr  ( a_addr ),
                .i_data  ( '0 ),
                .o_data  ( a_data[gi * `VEC_W +: `VEC_W] )
            );
        end
    endgenerate


    // B buffer
    ram #(
        .WIDTH ( `VEC_W ),
        .DEPTH ( (`N / `VS) * `K )
    ) u_ram_b (
        .i_clk   ( clk ),
        .i_rst_n ( '1 ),
        .i_we    ( '0 ),
        .i_addr  ( b_addr ),
        .i_data  ( '0 ),
        .o_data  ( b_data )
    );


    // sdf annotate
    `ifdef SDF
        initial $sdf_annotate(`SDF_FILE, u_mm_ctrl);
    `endif


    // dump waveform
    initial begin
        $fsdbDumpfile("mm.fsdb");
        $fsdbDumpvars(1, tb_mm, "+mda");
    end


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
    end


    // save each tile output
    assign tile_row = tile_cnt / (`N / `VL);
    assign tile_col = tile_cnt - (tile_row * (`N / `VL));

    always @(posedge tile_done) begin
        for (col = 0; col < `VL; col = col + 1) begin
            for (row = 0; row < `VL; row = row + 1) begin
                mtrx_out[(tile_row * `VL + row) * `N + (tile_col * `VL + col)] = u_mm_ctrl.u_acc_buf.registers[col][row * `ACC_W +: `ACC_W];
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
                if (idx < 32) $display("[ERROR  ] [%d] Calculated:%6h Golden:%6h", idx, mtrx_out[idx], mtrx_golden[idx]);
            end else begin
                if (idx < 32) $display("[CORRECT] [%d] Calculated:%6h Golden:%6h", idx, mtrx_out[idx], mtrx_golden[idx]);
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
        $readmemh(`IN_MTRX_A, mtrx_ina);
        $readmemh(`IN_MTRX_B, mtrx_inb);
        $readmemh(`OUT_MTRX, mtrx_golden);
        $readmemh(`IN_SF_A, in_sf_a);
        $readmemh(`IN_SF_B, in_sf_b);

        // load A buffers (unrolled...)
        // Bank 0
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 0 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[0].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[0].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 1
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 1 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[1].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[1].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 2
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 2 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[2].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[2].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 3
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 3 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[3].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[3].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 4
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 4 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[4].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[4].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 5
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 5 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[5].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[5].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 6
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 6 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[6].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[6].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 7
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 7 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[7].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[7].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 8
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 8 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[8].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[8].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 9
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 9 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[9].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[9].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 10
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 10 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[10].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[10].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 11
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 11 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[11].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[11].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 12
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 12 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[12].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[12].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 13
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 13 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[13].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[13].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 14
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 14 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[14].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[14].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end

        // Bank 15
        for (group = 0; group < `GROUP; group = group + 1) begin
            row = 15 + group * `VL;
            for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_ina[row * `K + stride * `VS + entry];
                end
                vec_sf = in_sf_a[row * (`K / `VS) + stride];
                RAM_A[15].u_ram_a.mem[group * `STRIDE + stride][`VEC_W - 1 -: `DAT_W] = vec_data;
                RAM_A[15].u_ram_a.mem[group * `STRIDE + stride][`SF_W  - 1 -:  `SF_W] = vec_sf;
            end
        end


        // load B buffer
        for (stride = 0; stride < `STRIDE; stride = stride + 1) begin
            for (col = 0; col < `N; col = col + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    vec_data[entry * `DATA_W +: `DATA_W] = mtrx_inb[(entry + stride * `VS) * `N + col];
                end
                vec_sf = in_sf_b[stride * `N + col];
                u_ram_b.mem[stride * `N + col][`VEC_W - 1 -: `DAT_W] = vec_data;
                u_ram_b.mem[stride * `N + col][`SF_W  - 1 -:  `SF_W] = vec_sf;
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
