`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 500000

`include "define.v"

`ifdef pat0
    `define IN_A   "./tb/pat_top/p0_ina.dat"
    `define IN_B   "./tb/pat_top/p0_inb.dat"
    `define IN_SFA "./tb/pat_top/p0_insfa.dat"
    `define IN_SFB "./tb/pat_top/p0_insfb.dat"
    `define OUT    "./tb/pat_top/p0_out.dat"
    `define MODE   `INT4
    `define DATA_W `DATA4_W
    `define VS     `INT4_VS
`elsif pat1
    `define IN_A   "./tb/pat_top/p1_ina.dat"
    `define IN_B   "./tb/pat_top/p1_inb.dat"
    `define IN_SFA "./tb/pat_top/p1_insfa.dat"
    `define IN_SFB "./tb/pat_top/p1_insfb.dat"
    `define OUT    "./tb/pat_top/p1_out.dat"
    `define MODE   `INT8
    `define DATA_W `DATA8_W
    `define VS     `INT8_VS
`elsif pat2
    `define IN_A   "./tb/pat_top/p2_ina.dat"
    `define IN_B   "./tb/pat_top/p2_inb.dat"
    `define IN_SFA "./tb/pat_top/p2_insfa.dat"
    `define IN_SFB "./tb/pat_top/p2_insfb.dat"
    `define OUT    "./tb/pat_top/p2_out.dat"
    `define MODE   `INT4_VSQ
    `define DATA_W `DATA4_W
    `define VS     `INT4_VS
`else
    `define IN_A   "./tb/pat_top/p0_ina.dat"
    `define IN_B   "./tb/pat_top/p0_inb.dat"
    `define IN_SFA "./tb/pat_top/p0_insfa.dat"
    `define IN_SFB "./tb/pat_top/p0_insfb.dat"
    `define OUT    "./tb/pat_top/p0_out.dat"
    `define MODE   `INT4
    `define DATA_W `DATA4_W
    `define VS     `INT4_VS
`endif

`define RAMA_D     (`M / `VL) * (`K / `VS)
`define RAMB_D     (`N / `VS) * `K
`define GROUP      (`M / `VL)
`define STRIDE     (`K / `VS)
`define VEC_STRIDE (`N / `VSQ_BUF_D)


module tb_top;

    genvar  gi;
    integer i;
    integer errors;
    integer row_grp, vec, entry, col, row;
    integer vec_col, vec_row;


    logic                        clk;
    logic                        rst_n;

    // interface
    logic [1                 :0] mode;
    logic                        start;

    logic [`VEC_W * `VL   - 1:0] a_data;
    logic [`VEC_W         - 1:0] b_data;
    logic [`ADDR_W        - 1:0] a_addr;
    logic [`ADDR_W        - 1:0] b_addr;

    logic                        out_we;
    logic [`DATA8_W * `VL - 1:0] out_data;
    logic [`ADDR_W        - 1:0] out_addr;

    logic [`TRUNC_W * `VL - 1:0] sf_vsq;
    logic [`TRUNC_W       - 1:0] sf_int4;
    logic [`TRUNC_W       - 1:0] sf_int8;

    logic                        vec_done;
    logic                        finish;

    // matrices (raster scan)
    logic [`DATA_W        - 1:0] mtrx_a      [0:`M * `K - 1];
    logic [`DATA_W        - 1:0] mtrx_b      [0:`K * `N - 1];
    logic [`DATA_W        - 1:0] mtrx_golden [0:`M * `N - 1];
    logic [`DATA_W        - 1:0] mtrx_out    [0:`M * `N - 1];

    // sf in
    logic [`SF_W          - 1:0] sf_a        [0:`M * `K / `VS - 1];
    logic [`SF_W          - 1:0] sf_b        [0:`K * `N / `VS - 1];

    // vars
    logic [`DAT_W         - 1:0] data;
    logic [`SF_W          - 1:0] sf;
    logic [`DATA8_W * `VL - 1:0] out_col;


    // clk gen
    clk_gen u_clk_gen (
        .clk   ( clk ),
        .rst_n ( rst_n )
    );


    // top
    top u_top (
        .i_clk                 ( clk ),
        .i_rst_n               ( rst_n ),
        .i_mode                ( mode ),
        .i_relu_en             ( 1'b0 ),
        .i_start               ( start ),

        .i_a_data              ( a_data ),
        .i_b_data              ( b_data ),
        .o_a_addr              ( a_addr ),
        .o_b_addr              ( b_addr ),

        .o_out_we              ( out_we ),
        .o_out_data            ( out_data ),
        .o_out_addr            ( out_addr ),

        .o_sf_vsq              ( sf_vsq ),
        .o_sf_int4             ( sf_int4 ),
        .o_sf_int8             ( sf_int8 ),

        .o_softmax_y           (  ),
        .o_softmax_runmax      (  ),
        .o_softmax_denom       (  ),
        .o_softmax_y_valid     (  ),
        .o_softmax_denom_valid (  ),

        .o_tile_done           (  ),
        .o_mtrx_done           (  ),
        .o_vec_done            ( vec_done ),
        .o_finish              ( finish )
    );


    // A buffers
    generate
        for (gi = 0; gi < `VL; gi = gi + 1) begin: RAM_A
            ram #(
                .WIDTH ( `VEC_W ),
                .DEPTH ( `RAMA_D )
            ) u_ram_a (
                .i_clk   ( clk ),
                .i_rst_n ( 1'b1 ),
                .i_we    ( 1'b0 ),
                .i_addr  ( a_addr ),
                .i_data  ( `VEC_W'd0 ),
                .o_data  ( a_data[gi * `VEC_W +: `VEC_W] )
            );
        end
    endgenerate


    // B buffer
    ram #(
        .WIDTH ( `VEC_W ),
        .DEPTH ( `RAMB_D )
    ) u_ram_b (
        .i_clk   ( clk ),
        .i_rst_n ( 1'b1 ),
        .i_we    ( 1'b0 ),
        .i_addr  ( b_addr ),
        .i_data  ( `VEC_W'd0 ),
        .o_data  ( b_data )
    );


    // output buffer
    ram #(
        .WIDTH ( `DATA8_W * `VL ),
        .DEPTH ( `VSQ_BUF_D )
    ) u_ram_out (
        .i_clk   ( clk ),
        .i_rst_n ( rst_n ),
        .i_we    ( out_we ),
        .i_addr  ( out_addr ),
        .i_data  ( out_data ),
        .o_data  (  )
    );


    // dump waveform
    initial begin
        $fsdbDumpfile("top.fsdb");
        $fsdbDumpvars(0, tb_top, "+mda");
    end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        
        // reset
        wait (rst_n === 1'b0);
        start   = 0;
        mode    = 0;
        vec_col = 0;
        vec_row = 0;
        wait (rst_n === 1'b1);

        // start
        @(negedge clk);
        start = 1;
        mode  = `MODE;

        #(`CYCLE * 1.0);
        start = 0;
        mode  = 0;
    end


    // store vec outputs
    initial begin
        forever begin
            wait (vec_done === 1'b1);
            # (`CYCLE * 5.0);
            
            for (col = 0; col < `VSQ_BUF_D; col = col + 1) begin
                out_col = u_ram_out.mem[col];
                for (row = 0; row < `VL; row = row + 1) begin
                    if (`MODE == `INT8) mtrx_out[(vec_row*`VL + row) * `N + (vec_col*`VSQ_BUF_D + col)] = out_col[row * `DATA8_W +: `DATA8_W];
                    else                mtrx_out[(vec_row*`VL + row) * `N + (vec_col*`VSQ_BUF_D + col)] = out_col[row * `DATA4_W +: `DATA4_W];
                end
            end

            # (`CYCLE * 5.0);
            if (vec_col == `VEC_STRIDE - 1) begin
                vec_col = 0;
                vec_row = vec_row + 1;
            end else begin
                vec_col = vec_col + 1;
                vec_row = vec_row;
            end
        end
    end


    // finish
    initial begin
        wait (finish === 1'b1);
        #(`CYCLE * 100.0);

        $display("==================================================================");
        $display("Simulation Results");
        $display("==================================================================");

        $display("");
        $display("First 32 outputs (tolerate +/- 1 mismatch):\n");

        errors = 0;
        for (integer idx = 0; idx < `M * `N; idx = idx + 1) begin
            if (mtrx_out[idx] !== mtrx_golden[idx] && mtrx_out[idx] !== $signed(mtrx_golden[idx]) + 4'sd1 && mtrx_out[idx] !== $signed(mtrx_golden[idx]) - 4'sd1) begin
                // allow +/- 1 error
                errors = errors + 1;
                $display("[ERROR  ] [%d] Calculated:%8b Golden:%8b", idx, mtrx_out[idx], mtrx_golden[idx]);
            end else begin
                $display("[CORRECT] [%d] Calculated:%8b Golden:%8b", idx, mtrx_out[idx], mtrx_golden[idx]);
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


    // load scale and bias
    initial begin
        // scale factors (all 2e-6)
        for (i = 0; i < 16; i = i + 1) begin
            u_top.u_ppu.scale_buf.registers[i] = {16{16'b0000000000010000}};
        end

        // bias (all zeros)
        for (i = 0; i < 16; i = i + 1) begin
            u_top.u_ppu.bias_buf.registers[i] = {16{16'd0}};
        end
    end


    // load pattern
    initial begin
        $readmemh(`IN_A, mtrx_a);
        $readmemh(`IN_B, mtrx_b);
        $readmemh(`OUT, mtrx_golden);
        $readmemh(`IN_SFA, sf_a);
        $readmemh(`IN_SFB, sf_b);

        // load A buffers (unrolled...)
        // Bank 0
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 0 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[0].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[0].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 1
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 1 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[1].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[1].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 2
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 2 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[2].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[2].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 3
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 3 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[3].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[3].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 4
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 4 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[4].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[4].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 5
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 5 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[5].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[5].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 6
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 6 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[6].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[6].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 7
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 7 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[7].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[7].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 8
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 8 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[8].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[8].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 9
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 9 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[9].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[9].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 10
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 10 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[10].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[10].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 11
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 11 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[11].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[11].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 12
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 12 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[12].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[12].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 13
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 13 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[13].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[13].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 14
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 14 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[14].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[14].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end

        // Bank 15
        for (row_grp = 0; row_grp < `GROUP; row_grp = row_grp + 1) begin
            row = 15 + row_grp * `VL;
            for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_a[row * `K + vec * `VS + entry];
                end
                sf = sf_a[row * (`K / `VS) + vec];
                RAM_A[15].u_ram_a.mem[row_grp * `STRIDE + vec][`VEC_W - 1 -: `DAT_W] = data;
                RAM_A[15].u_ram_a.mem[row_grp * `STRIDE + vec][`SF_W  - 1 -:  `SF_W] = sf;
            end
        end


        // load B buffer
        for (vec = 0; vec < `STRIDE; vec = vec + 1) begin
            for (col = 0; col < `N; col = col + 1) begin
                for (entry = 0; entry < `VS; entry = entry + 1) begin
                    data[entry * `DATA_W +: `DATA_W] = mtrx_b[(entry + vec * `VS) * `N + col];
                end
                sf = sf_b[vec * `N + col];
                u_ram_b.mem[vec * `N + col][`VEC_W - 1 -: `DAT_W] = data;
                u_ram_b.mem[vec * `N + col][`SF_W  - 1 -:  `SF_W] = sf;
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
