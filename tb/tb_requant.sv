`timescale 1ns / 10ps
`define CYCLE 10.0
`define END_CYCLE 400


`ifdef pat0
    `define IN "./tb/pat_requant/p0_in.dat"
`elsif pat1
    `define IN "./tb/pat_requant/p1_in.dat"
`else
    `define IN "./tb/pat_requant/p0_in.dat"
`endif


module tb_requant;

    integer i, j;
    integer data_idx;


    logic clk;
    logic rst_n;

    // ppu input
    logic                 start;
    logic [24 * 16 - 1:0] acc_data;

    // ppu output
    logic                 ram_we;
    logic [4  * 16 - 1:0] ram_data;
    logic [5          :0] ram_addr;

    logic                 sf_valid;
    logic [40 * 16 - 1:0] sf_data;

    // data storage
    logic [24 * 16 - 1:0] vector_in [0: 64 - 1];


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
        .i_relu_en             ( 1'b0 ),

        .o_ram_we              ( ram_we ),
        .o_ram_data            ( ram_data ),
        .o_ram_addr            ( ram_addr ),

        .o_sf_valid            ( sf_valid ),
        .o_sf_data             ( sf_data ),

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
        $display("sf results:");
        for (i = 0; i < 16; i = i + 1) begin
            $display("sf[%d] = %b", i, sf_data[i*40 +: 40]);
        end

        $display("");
        $display("ram results:");

        // output ram results
        #(`CYCLE * 100.0);
        for (j = 0; j < 16; j = j + 1) begin
            for (i = 0; i < 64; i = i + 1) begin
                $write("%b ", u_ram.mem[i][j*4 +: 4]);
            end
            $write("\n");
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
