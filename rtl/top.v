module top (
    input        i_clk,
    input        i_rst_n,
    input  [1:0] i_mode,
    input        i_start,
    output       o_done
);

    // ppu - mm_ctrl interface
    wire         ppu_start;
    wire [383:0] acc_data;

    // ppu - ram interface
    wire         ram_we;
    wire [7:0]   ram_data;
    wire [12:0]  ram_addr;


    // mm_ctrl
    mm_ctrl u_mm_ctrl (
        .i_clk       ( i_clk ),
        .i_rst_n     ( i_rst_n ),

        // from tb
        .i_mode      ( i_mode ),
        .i_start     ( i_start ),

        // to tb
        .o_tile_done ( ),
        .o_mtrx_done ( o_done ),

        // to ppu
        .o_ppu_start ( ppu_start ),
        .o_acc_data  ( acc_data )
    );


    // ppu
    ppu u_ppu (
        .i_clk       ( i_clk ),
        .i_rst_n     ( i_rst_n ),

        // from mm_ctrl
        .i_ppu_start ( ppu_start ),
        .i_acc_data  ( acc_data ),

        // to output ram
        .o_ram_we    ( ram_we ),
        .o_ram_data  ( ram_data ),
        .o_ram_addr  ( ram_addr )
    );


    // // output ram
    // ram #(
    //     .VEC_WIDTH  ( 8 ),
    //     .ARR_DEPTH  ( 8192 )
    // ) u_ram (
    //     .i_clk       ( clk ),
    //     .i_rst_n     ( 1'b1 ),
    //     .i_we        ( 1'b0 ),
    //     .i_addr      ( ram_addr ),
    //     .i_data      ( 256'd0 ),
    //     .o_data      ( ram_data )
    // );

endmodule
