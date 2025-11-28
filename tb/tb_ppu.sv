`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 400

`include "define.v"


`ifdef pat0
    `define IN  "./tb/pat_ppu/p0_in.dat"
    `define OUT "./tb/pat_ppu/p0_out.dat"
`elsif pat1
    `define IN  "./tb/pat_ppu/p1_in.dat"
    `define OUT "./tb/pat_ppu/p1_out.dat"
`elsif pat2
    `define IN  "./tb/pat_ppu/p2_in.dat"
    `define OUT "./tb/pat_ppu/p2_out.dat"
`else
    `define IN  "./tb/pat_ppu/p0_in.dat"
    `define OUT "./tb/pat_ppu/p0_out.dat"
`endif


module tb_ppu;

    integer i, j;
    integer data_idx;
    integer errors;


    logic clk;
    logic rst_n;

    // interface
    logic                        start;
    logic [`ACC_W * `VL   - 1:0] acc_data;

    logic                        out_we;
    logic [`DATA8_W * `VL - 1:0] out_data;
    logic [`ADDR_W        - 1:0] out_addr;

    logic [`TRUNC_W * `VL - 1:0] sf_vsq;
    logic                        vec_done;

    // data storage
    logic [`ACC_W * `VL   - 1:0] vector_in  [0: 64 - 1];
    logic [`DATA8_W * `VL - 1:0] vector_out [0: 64 - 1];


    // clk gen
    clk_gen u_clk_gen(
        .clk   ( clk ),
        .rst_n ( rst_n )
    );


    // ppu
    ppu u_ppu (
        .i_clk                 ( clk ),
        .i_rst_n               ( rst_n ),

        .i_ppu_start           ( start ),
        .i_acc_data            ( acc_data ),
        .i_mode                ( `INT4_VSQ ),
        .i_relu_en             ( 1'b0 ),        // relu off

        .i_scale_buf_we        ( '0 ),
        .i_scale_buf_addr_wr   ( '0 ),
        .i_scale_buf_data_wr   ( '0 ),
        .i_bias_buf_we         ( '0 ),
        .i_bias_buf_addr_wr    ( '0 ),
        .i_bias_buf_data_wr    ( '0 ),

        .o_out_we              ( out_we ),
        .o_out_data            ( out_data ),
        .o_out_addr            ( out_addr ),

        .o_sf_vsq              ( sf_vsq ),
        .o_sf_int4             (  ),
        .o_sf_int8             (  ),

        .o_softmax_y           (  ),
        .o_softmax_runmax      (  ),
        .o_softmax_denom       (  ),
        .o_softmax_y_valid     (  ),
        .o_softmax_denom_valid (  ),

        .o_vec_done            ( vec_done ),
        .o_finish              (  )
    );


    // output ram
    ram #(
        .WIDTH ( `DATA8_W * `VL ),
        .DEPTH ( 64 )
    ) u_ram (
        .i_clk   ( clk ),
        .i_rst_n ( rst_n ),
        .i_we    ( out_we ),
        .i_addr  ( out_addr ),
        .i_data  ( out_data ),
        .o_data  ( )
    );


    // dump waveform
    initial begin
        $fsdbDumpfile("ppu.fsdb");
        $fsdbDumpvars(0, tb_ppu, "+mda");
    end


    // load data
    initial begin
        // input tile
        $readmemh(`IN, vector_in);

        // output golden results
        $readmemh(`OUT, vector_out);
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

        // load scale factors (all 2e-6)
        for (i = 0; i < 16; i = i + 1) begin
            u_ppu.scale_buf.registers[i] = {16{16'b0000000000010000}};
        end

        // load bias (all zeros)
        for (i = 0; i < 16; i = i + 1) begin
            u_ppu.bias_buf.registers[i] = {16{16'd0}};
        end

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
        wait (vec_done === 1'b1);
        #(`CYCLE * 10.0);

        $display("==================================================================");
        $display("Simulation Results");
        $display("==================================================================");

        $display("");
        $display("First row outputs (tolerate +/- 1 mismatch):\n");

        errors = 0;
        for (j = 0; j < 16; j = j + 1) begin
            for (i = 0; i < 64; i = i + 1) begin
                // allow +/- 1 error
                if (u_ram.mem[i][j*4 +: 4] !== vector_out[i][j*4 +: 4] && u_ram.mem[i][j*4 +: 4] !== $signed(vector_out[i][j*4 +: 4]) + 4'sd1 && u_ram.mem[i][j*4 +: 4] !== $signed(vector_out[i][j*4 +: 4]) - 4'sd1) begin
                    $display("[ERROR] ram[%d][%d] = %b, expected %b", i, j, u_ram.mem[i][j*4 +: 4], vector_out[i][j*4 +: 4]);
                    errors = errors + 1;
                end else if (j == 0) begin
                    // display first row results
                    $display("[CORRECT] ram[%d][%d] = %b, Golden: %b", i, j, u_ram.mem[i][j*4 +: 4], vector_out[i][j*4 +: 4]);
                end
            end
        end

        $display("");

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
