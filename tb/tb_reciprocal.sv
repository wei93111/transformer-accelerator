`define CYCLE 10.0


module tb_reciprocal;

    // reciprocal io
    logic [17:0] data;
    logic [35:0] recip;


    // reciprocal
    reciprocal u_reciprocal (
        .i_data  ( data ),
        .o_recip ( recip )
    );


    // dump waveform
    initial begin
        $fsdbDumpfile("reciprocal.fsdb");
        $fsdbDumpvars(0, tb_reciprocal, "+mda");
    end


    // stimulus
    initial begin
        $display("Starting simulation...\n");
        data = 18'b000000000000001011;
        #(`CYCLE * 10.0);
        $display("recip = %b", recip);
        $finish;
    end

endmodule
