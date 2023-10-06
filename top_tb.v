`timescale 1ns / 1ps
`default_nettype none


module top_module;

    reg clk, rst;
    wire rpt_bt;
    reg [7:0] input_word;
   wire [7:0] Activated_vector_t0;

/*
CA_Processor_32STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE1_ACTIVATES(32'b00000000000000000000000010000100), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE2_ACTIVATES(32'b00000000000000000000000010000100), 
     .ActivationVector_STE3(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE3_ACTIVATES(32'b00000000000000000000000000001000), 
     .ActivationVector_STE4(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE4_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE5_ACTIVATES(32'b00000000000000000000000000100000), 
     .ActivationVector_STE6(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE6_ACTIVATES(32'b00000000000000000000000010000100), 
     .ActivationVector_STE7(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE7_ACTIVATES(32'b00000000000000000000000000100000), 
     .ActivationVector_STE8(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE8_ACTIVATES(32'b00000000000000000000000000000000), 

      .start_vector(32'b00000000000000000000000001010001), 
      .end_vector(  32'b00000000000000000000000010001100) ) CA_p_v1 ( 
.clk(clk), 
  .rst(rst),
 .input_word(input_word),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0)
);
*/


CA_Processor_8STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000002000000020000000000000000), 
            .STE1_ACTIVATES(8'b10000100), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000002000000020000000000000000), 
            .STE2_ACTIVATES(8'b10000100), 
     .ActivationVector_STE3(256'h0000000000000000000000000000000000040000000400000000000000000000), 
            .STE3_ACTIVATES(8'b00001000), 
     .ActivationVector_STE4(256'h0000000000000000000000000000000000100000001000000000000000000000), 
            .STE4_ACTIVATES(8'b00000000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000004000000040000000000000000), 
            .STE5_ACTIVATES(8'b00100000), 
     .ActivationVector_STE6(256'h0000000000000000000000000000000000000002000000020000000000000000), 
            .STE6_ACTIVATES(8'b10000100), 
     .ActivationVector_STE7(256'h0000000000000000000000000000000000000008000000080000000000000000), 
            .STE7_ACTIVATES(8'b00100000), 
     .ActivationVector_STE8(256'h0000000000000000000000000000000000100000001000000000000000000000), 
            .STE8_ACTIVATES(8'b00000000), 

      .start_vector(8'b01010001), 
      .end_vector(  8'b10001100) 
) CA_p_v1 ( 
.clk(clk), 
  .rst(rst),
 .input_word(input_word),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0)
);




always begin
    #8; 
    clk = ~clk; // Toggle the clock every 5 time units
    #2
    clk = ~clk;
    //$display("Time=%0t: A=%d, B=%d, result=%d", $time, A, B, result);
    //#3;  // Toggle the clock every 5 time units
    //$display("Time=%0t: A=%d, B=%d, result=%d", $time, A, B, result);
    //#2;
  //  clk = ~clk;
end

initial begin
    // Initialize simulation
    $display("Simulation started");
    $dumpfile("testbench.vcd");
    $dumpvars(0, top_module);
    clk = 0;
    rst = 0;
    input_word = 8'h00;
    #10;
    rst = 0;

// ----------------------------------------------------------------

//Automated Tb STARTS Here
//Automated Tb STARTS Here
input_word = 8'd98; // b
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd114; // r
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd116; // t
#10; 
input_word = 8'd66; // B
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd82; // R
#10; 
input_word = 8'd116; // t
#10; 
input_word = 8'd88; // X
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd107; // k
#10; 
input_word = 8'd83; // S
#10; 
input_word = 8'd104; // h
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd102; // f
#10; 
input_word = 8'd73; // I
#10; 
input_word = 8'd119; // w
#10; 
input_word = 8'd72; // H
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd78; // N
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd66; // B
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd66; // B
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd82; // R
#10; 
input_word = 8'd99; // c
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd104; // h
#10; 
input_word = 8'd68; // D
#10; 
input_word = 8'd117; // u
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd116; // t
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd100; // d
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd82; // R
#10; 
input_word = 8'd99; // c
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd114; // r
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd114; // r
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd99; // c
#10; 
input_word = 8'd66; // B
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd98; // b
#10; 
input_word = 8'd82; // R
#10; 
input_word = 8'd99; // c
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd116; // t
#10; 
input_word = 8'd82; // R
#10; 
input_word = 8'd110; // n
#10; 
input_word = 8'd66; // B
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd121; // y
#10; 
input_word = 8'd83; // S
#10; 
input_word = 8'd110; // n
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd116; // t
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd110; // n
#10; 
input_word = 8'd66; // B
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd67; // C
#10; 
input_word = 8'd114; // r
#10; 
input_word = 8'd78; // N
#10; 
input_word = 8'd116; // t
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd98; // b
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd110; // n
#10; 
input_word = 8'd65; // A
#10; 
input_word = 8'd114; // r
#10; 
input_word = 8'd66; // B
#10; 
input_word = 8'd120; // x
#10; 
input_word = 8'd84; // T
#10; 
input_word = 8'd97; // a
#10; 
input_word = 8'd82; // R
#10; 
//Automated Tb ENDS Here


//Automated Tb ENDS Here
input_word = 8'd0;
#10; 
input_word = 8'd0;
#10;
#10;




// ----------------------------------------------------------------

    $display("Simulation finished");
    $finish;
end

endmodule







