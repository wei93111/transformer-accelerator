`timescale 1ns / 10ps
`define CYCLE 9.0
`define END_CYCLE 500000

`include "define.v"

`ifdef pat0
    `define IN_MTRX   "../tb/pat_ppu/p0_in_mtrx.dat"
    `define IN_SCALE  "../tb/pat_ppu/p0_in_scale.dat"
    `define IN_BIAS   "../tb/pat_ppu/p0_in_bias.dat"
    `define OUT_MTRX  "../tb/pat_ppu/p0_out_mtrx.dat"
    `define OUT_SF    "../tb/pat_ppu/p0_out_sf.dat"
    `define OUT_NUMER "../tb/pat_ppu/p0_out_numer.dat"
    `define OUT_DENOM "../tb/pat_ppu/p0_out_denom.dat"
    `define MODE      `INT4
    `define DATA_W    `DATA4_W
    `define VS        `INT4_VS
`elsif pat1
    `define IN_MTRX   "../tb/pat_ppu/p1_in_mtrx.dat"
    `define IN_SCALE  "../tb/pat_ppu/p1_in_scale.dat"
    `define IN_BIAS   "../tb/pat_ppu/p1_in_bias.dat"
    `define OUT_MTRX  "../tb/pat_ppu/p1_out_mtrx.dat"
    `define OUT_SF    "../tb/pat_ppu/p1_out_sf.dat"
    `define OUT_NUMER "../tb/pat_ppu/p1_out_numer.dat"
    `define OUT_DENOM "../tb/pat_ppu/p1_out_denom.dat"
    `define MODE      `INT8
    `define DATA_W    `DATA8_W
    `define VS        `INT8_VS
`elsif pat2
    `define IN_MTRX   "../tb/pat_ppu/p2_in_mtrx.dat"
    `define IN_SCALE  "../tb/pat_ppu/p2_in_scale.dat"
    `define IN_BIAS   "../tb/pat_ppu/p2_in_bias.dat"
    `define OUT_MTRX  "../tb/pat_ppu/p2_out_mtrx.dat"
    `define OUT_SF    "../tb/pat_ppu/p2_out_sf.dat"
    `define OUT_NUMER "../tb/pat_ppu/p2_out_numer.dat"
    `define OUT_DENOM "../tb/pat_ppu/p2_out_denom.dat"
    `define MODE      `INT4_VSQ
    `define DATA_W    `DATA4_W
    `define VS        `INT4_VS
`else
    `define IN_MTRX   "../tb/pat_ppu/p0_in_mtrx.dat"
    `define IN_SCALE  "../tb/pat_ppu/p0_in_scale.dat"
    `define IN_BIAS   "../tb/pat_ppu/p0_in_bias.dat"
    `define OUT_MTRX  "../tb/pat_ppu/p0_out_mtrx.dat"
    `define OUT_SF    "../tb/pat_ppu/p0_out_sf.dat"
    `define OUT_NUMER "../tb/pat_ppu/p0_out_numer.dat"
    `define OUT_DENOM "../tb/pat_ppu/p0_out_denom.dat"
    `define MODE      `INT4
    `define DATA_W    `DATA4_W
    `define VS        `INT4_VS
`endif

`define SDF_FILE "ppu/ppu_syn.sdf"


module tb_ppu;

    integer i, j;
    integer out_col_cnt,  out_row_cnt,  out_col,  out_row;
    integer bias_col_cnt, bias_row_cnt, bias_col, bias_row;
    integer numer_col_cnt, numer_row_cnt, numer_row;
    integer denom_row_cnt, denom_row;

    integer out_errors, sf_errors, numer_errors, denom_errors;
    real    out_err, out_err_sum, out_err_avg, out_err_max;
    real    sf_err, sf_err_sum, sf_err_avg, sf_err_max;
    real    numer_err, numer_err_sum, numer_err_avg, numer_err_max;
    real    denom_err, denom_err_sum, denom_err_avg, denom_err_max;


    // interface
    logic clk;
    logic rst_n;

    logic                        ppu_start;
    logic [1                 :0] mode;
    logic                        relu_en;
    logic [`ACC_W * `VL   - 1:0] acc_data;

    logic                        scale_buf_we;
    logic [`ADDR_W        - 1:0] scale_buf_addr_wr;
    logic [`SCALE_W * `VL - 1:0] scale_buf_data_wr;
    logic                        bias_buf_we;
    logic [`ADDR_W        - 1:0] bias_buf_addr_wr;
    logic [`BIAS_W  * `VL - 1:0] bias_buf_data_wr;

    logic                        out_we;
    logic [`DATA8_W * `VL - 1:0] out_data;
    logic [`ADDR_W        - 1:0] out_addr;

    logic [`TRUNC_W * `VL - 1:0] sf_vsq;
    logic [`TRUNC_W       - 1:0] sf_int4;
    logic [`TRUNC_W       - 1:0] sf_int8;

    logic [`TRUNC_W * `VL - 1:0] softmax_runmax;
    logic [`NUMER_W * `VL - 1:0] softmax_numer;
    logic [`DENOM_W * `VL - 1:0] softmax_denom;
    logic                        softmax_numer_valid;
    logic                        softmax_denom_valid;

    logic                        vec_done;
    logic                        finish;

    // data storage
    logic [`ACC_W         - 1:0] mtrx_in      [0:`M * `N              - 1];
    logic [`SCALE_W       - 1:0] scale_in     [0:`M * `N              - 1];
    logic [`BIAS_W        - 1:0] bias_in      [0:`M * `N              - 1];

    logic [`DATA_W        - 1:0] mtrx_out     [0:`M * `N              - 1];
    logic [`DATA_W        - 1:0] mtrx_golden  [0:`M * `N              - 1];
    logic [`TRUNC_W       - 1:0] sf_out       [0:`M * `N / `VSQ_BUF_D - 1];
    logic [`TRUNC_W       - 1:0] sf_golden    [0:`M * `N / `VSQ_BUF_D - 1];
    logic [`NUMER_W       - 1:0] numer_out    [0:`M * `N              - 1];
    logic [`NUMER_W       - 1:0] numer_golden [0:`M * `N              - 1];
    logic [`DENOM_W       - 1:0] denom_out    [0:`M                   - 1];
    logic [`DENOM_W       - 1:0] denom_golden [0:`M                   - 1];

    logic [`SCALE_W * `VL - 1:0] scale_col_data;
    logic [`BIAS_W  * `VL - 1:0] bias_col_data;


    // ppu
    ppu u_ppu (
        .i_clk                 ( clk ),
        .i_rst_n               ( rst_n ),

        .i_ppu_start           ( ppu_start ),
        .i_acc_data            ( acc_data ),
        .i_mode                ( mode ),
        .i_relu_en             ( relu_en ),

        .i_scale_buf_we        ( scale_buf_we ),
        .i_scale_buf_addr_wr   ( scale_buf_addr_wr ),
        .i_scale_buf_data_wr   ( scale_buf_data_wr ),
        .i_bias_buf_we         ( bias_buf_we ),
        .i_bias_buf_addr_wr    ( bias_buf_addr_wr ),
        .i_bias_buf_data_wr    ( bias_buf_data_wr ),

        .o_out_we              ( out_we ),
        .o_out_data            ( out_data ),
        .o_out_addr            ( out_addr ),

        .o_sf_vsq              ( sf_vsq ),
        .o_sf_int4             ( sf_int4 ),
        .o_sf_int8             ( sf_int8 ),

        .o_softmax_runmax      ( softmax_runmax ),
        .o_softmax_numer       ( softmax_numer ),
        .o_softmax_denom       ( softmax_denom ),
        .o_softmax_numer_valid ( softmax_numer_valid ),
        .o_softmax_denom_valid ( softmax_denom_valid ),

        .o_vec_done            ( vec_done ),
        .o_finish              ( finish )
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


    // sdf annotate
    `ifdef SDF
        initial $sdf_annotate(`SDF_FILE, u_ppu);
    `endif


    // dump waveform
    initial begin
        $fsdbDumpfile("ppu.fsdb");
        $fsdbDumpvars(1, tb_ppu, "+mda");
    end


    // load data
    initial begin
        $readmemh(`IN_MTRX, mtrx_in);
        $readmemh(`IN_SCALE, scale_in);
        $readmemh(`IN_BIAS, bias_in);
        $readmemh(`OUT_MTRX, mtrx_golden);
        $readmemb(`OUT_SF, sf_golden);
        $readmemh(`OUT_NUMER, numer_golden);
        $readmemh(`OUT_DENOM, denom_golden);
    end


    // stimulus
    initial begin
        acc_data          = 0;
        bias_buf_data_wr  = 0;
        bias_buf_addr_wr  = 0;
        bias_buf_we       = 0;
        scale_buf_data_wr = 0;
        scale_buf_addr_wr = 0;
        scale_buf_we      = 0;
        bias_col_cnt      = 0;
        bias_row_cnt      = 0;
        
        // reset
        wait (rst_n === 1'b0);
        ppu_start    = 0;
        mode     = `MODE;
        relu_en  = 0;
        wait (rst_n === 1'b1);

        #(`CYCLE * 10.0);

        // loop through all tiles twice
        // first pass for max, second pass for quantization
        repeat ((2 * `M * `N) / (`VL * `AD)) begin
            @(posedge clk);
            #(`CYCLE * 0.05);

            // write scale and bias to buffer
            bias_buf_addr_wr  = 0;
            scale_buf_addr_wr = 0;
            bias_col          = 0;
            repeat (`AD) begin
                for (bias_row = 0; bias_row < `VL; bias_row = bias_row + 1) begin
                    scale_col_data[bias_row * `SCALE_W +: `SCALE_W] = scale_in[(bias_row_cnt*`VL + bias_row) * `N + (bias_col_cnt*`AD + bias_col)];
                    bias_col_data[ bias_row *  `BIAS_W +:  `BIAS_W] = bias_in[ (bias_row_cnt*`VL + bias_row) * `N + (bias_col_cnt*`AD + bias_col)];
                end
                scale_buf_data_wr = scale_col_data;
                bias_buf_data_wr  = bias_col_data;
                scale_buf_we      = 1'b1;
                bias_buf_we       = 1'b1;

                # (`CYCLE * 1.0);
                scale_buf_addr_wr = scale_buf_addr_wr + 1;
                bias_buf_addr_wr  = bias_buf_addr_wr + 1;
                bias_col          = bias_col + 1;
                scale_buf_we      = 1'b0;
                bias_buf_we       = 1'b0;
            end

            #(`CYCLE * 1.0);
            ppu_start = 1;
            @(posedge clk);
            #(`CYCLE * 0.05);
            ppu_start = 0;

            // input acc data
            bias_col = 0;
            repeat (`AD) begin
                for (bias_row = 0; bias_row < `VL; bias_row = bias_row + 1) begin
                    acc_data[bias_row * `ACC_W +: `ACC_W] = mtrx_in[(bias_row_cnt*`VL + bias_row) * `N + (bias_col_cnt*`AD + bias_col)];
                end
                # (`CYCLE * 1.0);
                bias_col = bias_col + 1;
            end

            // increment cnt
            if (bias_col_cnt == `N / `AD - 1) begin
                if (bias_row_cnt == `M / `VL - 1) begin
                    // first pass done, run second pass...
                    bias_col_cnt = 0;
                    bias_row_cnt = 0;
                end else begin
                    bias_col_cnt = 0;
                    bias_row_cnt = bias_row_cnt + 1;
                end
            end else begin
                bias_col_cnt = bias_col_cnt + 1;
                bias_row_cnt = bias_row_cnt;
            end

            #(`CYCLE * 1.0);
        end
    end


    // store quantized and sf outputs
    initial begin
        out_col_cnt = 0;
        out_row_cnt = 0;

        forever begin
            wait (vec_done === 1'b1);
            #(`CYCLE * 0.95);

            // store sf
            if (`MODE == `INT8) begin
                for (out_row = 0; out_row < `VL; out_row = out_row + 1) begin
                    sf_out[(out_row_cnt*`VL + out_row) * (`N / `VSQ_BUF_D) + out_col_cnt] = sf_int8;
                end
            end else if (`MODE == `INT4) begin
                for (out_row = 0; out_row < `VL; out_row = out_row + 1) begin
                    sf_out[(out_row_cnt*`VL + out_row) * (`N / `VSQ_BUF_D) + out_col_cnt] = sf_int4;
                end
            end else if (`MODE == `INT4_VSQ) begin
                for (out_row = 0; out_row < `VL; out_row = out_row + 1) begin
                    sf_out[(out_row_cnt*`VL + out_row) * (`N / `VSQ_BUF_D) + out_col_cnt] = sf_vsq[out_row * `TRUNC_W +: `TRUNC_W];
                end
            end

            #(`CYCLE * 1.0);

            // store output
            for (out_col = 0; out_col < `VSQ_BUF_D; out_col = out_col + 1) begin
                for (out_row = 0; out_row < `VL; out_row = out_row + 1) begin
                    if (`MODE == `INT8) mtrx_out[(out_row_cnt*`VL + out_row) * `N + (out_col_cnt*`VSQ_BUF_D + out_col)] = u_ram_out.mem[out_col][out_row * `DATA8_W +: `DATA8_W];
                    else                mtrx_out[(out_row_cnt*`VL + out_row) * `N + (out_col_cnt*`VSQ_BUF_D + out_col)] = u_ram_out.mem[out_col][out_row * `DATA4_W +: `DATA4_W];
                end
            end

            // increment cnt
            if (out_col_cnt == `N / `VSQ_BUF_D - 1) begin
                if (out_row_cnt == `M / `VL - 1) begin
                    out_col_cnt = 0;
                    out_row_cnt = 0;
                end else begin
                    out_col_cnt = 0;
                    out_row_cnt = out_row_cnt + 1;
                end
            end else begin
                out_col_cnt = out_col_cnt + 1;
                out_row_cnt = out_row_cnt;
            end
        end
    end


    // store softmax denominator
    initial begin
        denom_row_cnt = 0;

        forever begin
            wait (softmax_denom_valid === 1'b1);
            #(`CYCLE * 0.95);

            // store softmax denominator
            for (denom_row = 0; denom_row < `VL; denom_row = denom_row + 1) begin
                denom_out[denom_row_cnt*`VL + denom_row] = softmax_denom[denom_row*`DENOM_W +: `DENOM_W];
            end

            // increment cnt
            if (denom_row_cnt == `M / `VL - 1) begin
                denom_row_cnt = 0;
            end else begin
                denom_row_cnt = denom_row_cnt + 1;
            end
            #(`CYCLE * 1.0);
        end
    end


    // store softmax numerator
    initial begin
        numer_col_cnt = 0;
        numer_row_cnt = 0;

        forever begin
            wait (softmax_numer_valid === 1'b1);
            @(negedge clk);

            // store softmax numerator
            for (numer_row = 0; numer_row < `VL; numer_row = numer_row + 1) begin
                numer_out[(numer_row_cnt*`VL + numer_row) * `N + numer_col_cnt] = softmax_numer[numer_row*`NUMER_W +: `NUMER_W];
            end

            // increment cnt
            if (numer_col_cnt == `N - 1) begin
                if (numer_row_cnt == `M / `VL - 1) begin
                    numer_col_cnt = 0;
                    numer_row_cnt = 0;
                end else begin
                    numer_col_cnt = 0;
                    numer_row_cnt = numer_row_cnt + 1;
                end
            end else begin
                numer_col_cnt = numer_col_cnt + 1;
                numer_row_cnt = numer_row_cnt;
            end
            #(`CYCLE * 0.9);
        end
    end


    // finish
    initial begin
        wait (finish === 1'b1);
        #(`CYCLE * 100.0);

        $display("");
        $display("==================================================================");
        $display("Simulation Results");
        $display("==================================================================");

        $display("");
        if (`MODE == `INT4) begin
            $display("Mode: INT4");
        end else if (`MODE == `INT8) begin
            $display("Mode: INT8");
        end else if (`MODE == `INT4_VSQ) begin
            $display("Mode: INT4_VSQ");
        end

        // check quantized output
        $display("");
        $display("----------------------------------------");
        if (`MODE == `INT4) begin
            $display("First 32 quantized outputs (INT4):");
        end else if (`MODE == `INT8) begin
            $display("First 32 quantized outputs (INT8):");
        end else if (`MODE == `INT4_VSQ) begin
            $display("First 32 quantized outputs (INT4_VSQ):");
        end
        $display("----------------------------------------");
        $display("");

        out_errors  = 0;
        out_err_sum = 0.0;
        out_err_max = 0.0;

        for (integer idx = 0; idx < `M * `N; idx = idx + 1) begin
            // error calculation
            out_err = $signed(mtrx_out[idx]) - $signed(mtrx_golden[idx]);
            if (out_err < 0) out_err = -out_err;
            out_err_max = (out_err > out_err_max) ? out_err : out_err_max;
            out_err_sum = out_err_sum + out_err;

            // count mismatches
            if (mtrx_out[idx] !== mtrx_golden[idx]) begin
                out_errors = out_errors + 1;
                if (idx < 32) $display("[DIFF ] mtrx[%0d] Calculated:%8b Golden:%8b", idx, mtrx_out[idx], mtrx_golden[idx]);
            end else begin
                if (idx < 32) $display("[MATCH] mtrx[%0d] Calculated:%8b Golden:%8b", idx, mtrx_out[idx], mtrx_golden[idx]);
            end
        end

        out_err_avg = out_err_sum / (`M * `N);
        $display("");
        $display("Quantized output summary:");
        $display("Total mismatches           : %0d out of %0d entries", out_errors, `M * `N);
        $display("Average per-entry mismatch : %0f", out_err_avg);
        $display("Maximum per-entry mismatch : %0f", out_err_max);


        // check sf output
        $display("");
        $display("----------------------------------------");
        $display("First 32 sf outputs (INT18):");
        $display("----------------------------------------");
        $display("");

        sf_errors  = 0;
        sf_err_sum = 0.0;
        sf_err_max = 0.0;

        for (integer idx = 0; idx < `M * `N / `VSQ_BUF_D; idx = idx + 1) begin
            // error calculation
            sf_err = $signed(sf_out[idx]) - $signed(sf_golden[idx]);
            if (sf_err < 0) sf_err = -sf_err;
            sf_err_max = (sf_err > sf_err_max) ? sf_err : sf_err_max;
            sf_err_sum = sf_err_sum + sf_err;

            // count mismatches
            if (sf_out[idx] !== sf_golden[idx]) begin
                sf_errors = sf_errors + 1;
                if (idx < 32) $display("[DIFF ] sf[%0d] Calculated:%18b Golden:%18b", idx, sf_out[idx], sf_golden[idx]);
            end else begin
                if (idx < 32) $display("[MATCH] sf[%0d] Calculated:%18b Golden:%18b", idx, sf_out[idx], sf_golden[idx]);
            end
        end

        sf_err_avg = sf_err_sum / (`M * `N / `VSQ_BUF_D);
        $display("");
        $display("Scale factor summary:");
        $display("Total mismatches           : %0d out of %0d entries", sf_errors, `M * `N / `VSQ_BUF_D);
        $display("Average per-entry mismatch : %0f", sf_err_avg);
        $display("Maximum per-entry mismatch : %0f", sf_err_max);


        // check softmax numerator
        $display("");
        $display("----------------------------------------");
        $display("First 32 softmax numerators (Q9.7):");
        $display("----------------------------------------");
        $display("");

        numer_errors  = 0;
        numer_err_sum = 0.0;
        numer_err_max = 0.0;

        for (integer idx = 0; idx < `M * `N; idx = idx + 1) begin
            // error calculation
            numer_err = $signed(numer_out[idx]) - $signed(numer_golden[idx]);
            if (numer_err < 0) numer_err = -numer_err;
            numer_err_max = (numer_err > numer_err_max) ? numer_err : numer_err_max;
            numer_err_sum = numer_err_sum + numer_err;

            // count mismatches
            if (numer_out[idx] !== numer_golden[idx]) begin
                numer_errors = numer_errors + 1;
                if (idx < 32) $display("[DIFF ] numer[%0d] Calculated:%16b Golden:%16b", idx, numer_out[idx], numer_golden[idx]);
            end else begin
                if (idx < 32) $display("[MATCH] numer[%0d] Calculated:%16b Golden:%16b", idx, numer_out[idx], numer_golden[idx]);
            end
        end

        numer_err_avg = numer_err_sum / (`M * `N);
        $display("");
        $display("Softmax numerator summary:");
        $display("Total mismatches           : %0d out of %0d entries", numer_errors, `M * `N);
        $display("Average per-entry mismatch : %0f", numer_err_avg / 128.0);
        $display("Maximum per-entry mismatch : %0f", numer_err_max / 128.0);


        // check softmax denominator
        $display("");
        $display("----------------------------------------");
        $display("First 32 softmax denominators (Q9.7):");
        $display("----------------------------------------");
        $display("");

        denom_errors  = 0;
        denom_err_sum = 0.0;
        denom_err_max = 0.0;

        for (integer idx = 0; idx < `M; idx = idx + 1) begin
            // error calculation
            denom_err = $signed(denom_out[idx]) - $signed(denom_golden[idx]);
            if (denom_err < 0) denom_err = -denom_err;
            denom_err_max = (denom_err > denom_err_max) ? denom_err : denom_err_max;
            denom_err_sum = denom_err_sum + denom_err;

            // count mismatches
            if (denom_out[idx] !== denom_golden[idx]) begin
                denom_errors = denom_errors + 1;
                if (idx < 32) $display("[DIFF ] denom[%0d] Calculated:%16b Golden:%16b", idx, denom_out[idx], denom_golden[idx]);
            end else begin
                if (idx < 32) $display("[MATCH] denom[%0d] Calculated:%16b Golden:%16b", idx, denom_out[idx], denom_golden[idx]);
            end
        end

        denom_err_avg = denom_err_sum / (`M);
        $display("");
        $display("Softmax denominator summary:");
        $display("Total mismatches           : %0d out of %0d entries", denom_errors, `M);
        $display("Average per-entry mismatch : %0f", denom_err_avg / 128.0);
        $display("Maximum per-entry mismatch : %0f", denom_err_max / 128.0);


        // final result
        if (out_err_max <= 1.0 && sf_err_max <= 1.0 && numer_err_max <= 1.0 && denom_err_max <= 1.0) begin
            $display("");
            $display("	//////////////////////////////               ");
            $display("	//                          //       |\__||  ");
            $display("	//    Error <= 1.0          //      / O.O  | ");
            $display("	//                          //    /_____   | ");
            $display("	//    Simulation PASS!!     //   /^ ^ ^ \\  |");
            $display("	//                          //  |^ ^ ^ ^ |w| ");
            $display("	//////////////////////////////   \\m___m__|_|");
            $display("");
        end else begin
            $display("");
            $display("	//////////////////////////////               ");
            $display("	//                          //       |\__||  ");
            $display("	//    Error > 1.0           //      / X,X  | ");
            $display("	//                          //    /_____   | ");
            $display("	//    Simulation Failed!!   //   /^ ^ ^ \\  |");
            $display("	//                          //  |^ ^ ^ ^ |w| ");
            $display("	//////////////////////////////   \\m___m__|_|");
            $display("");
        end

        $finish;
    end


    // clk
    initial clk = 1'b0;
    always begin #(`CYCLE/2) clk = ~clk; end


    // reset
    initial begin
        rst_n = 1'b0;
        repeat (5) @(posedge clk);

        @(negedge clk);
        #(`CYCLE * 0.2);
        rst_n = 1'b1;

        # (`END_CYCLE * `CYCLE);
        $display("Error! Runtime exceeded!");
        $finish;
    end

endmodule
