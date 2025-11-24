`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 400

`include "define.v"


`ifdef pat0
    `define IN  "./tb/pat_requant/p0_in.dat"
    `define OUT "./tb/pat_requant/p0_out.dat"
`elsif pat1
    `define IN  "./tb/pat_requant/p1_in.dat"
    `define OUT "./tb/pat_requant/p1_out.dat"
`elsif pat2
    `define IN  "./tb/pat_requant/p2_in.dat"
    `define OUT "./tb/pat_requant/p2_out.dat"
`else
    `define IN  "./tb/pat_requant/p0_in.dat"
    `define OUT "./tb/pat_requant/p0_out.dat"
`endif


module tb_requant;

    integer i, j;
    integer data_idx;
    integer errors;


    logic clk;
    logic rst_n;

    // input
    logic                 start;
    logic [24 * 16 - 1:0] acc_data;

    // output
    logic                 ram_we;
    logic [4  * 16 - 1:0] ram_data;
    logic [5          :0] ram_addr;

    logic                 finish;
    logic [18 * 16 - 1:0] vsq_sf;
    logic [17         :0] int4_sf;
    logic [17         :0] int8_sf;

    // data storage
    logic [24 * 16 - 1:0] vector_in [0: 64 - 1];
    logic [4  * 16 - 1:0] vector_out[0: 64 - 1];


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

        .o_ram_we              ( ram_we ),
        .o_ram_data            ( ram_data ),
        .o_ram_addr            ( ram_addr ),

        .o_vsq_sf              ( vsq_sf ),
        .o_int4_sf             ( int4_sf ),
        .o_int8_sf             ( int8_sf ),
        .o_finish              ( finish ),

        .o_softmax_y           (  ),
        .o_softmax_runmax      (  ),
        .o_softmax_denom       (  ),
        .o_softmax_y_valid     (  ),
        .o_softmax_denom_valid (  )
    );


    // output ram
    ram #(
        .VEC_WIDTH ( 4 * 16 ),   // INT4 x 16 entries
        .ARR_DEPTH ( 64 )        // 64 cols (full vector)
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
        $fsdbDumpfile("requant.fsdb");
        $fsdbDumpvars(0, tb_requant, "+mda");
    end


    // load data
    initial begin
        // scale factors (all ones)
        for (i = 0; i < 16; i = i + 1) begin
            u_ppu.scale_buf.registers[i] = {16{16'b0000010000000000}};
        end

        // bias (all zeros)
        for (i = 0; i < 16; i = i + 1) begin
            u_ppu.bias_buf.registers[i] = {16{16'd0}};
        end

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
        wait (finish === 1'b1);
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
                    $display("[CORRECT] [%d] Calculated: %b, Golden: %b", i, u_ram.mem[i][j*4 +: 4], vector_out[i][j*4 +: 4]);
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
