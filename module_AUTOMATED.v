`timescale 1ns / 1ps 
 `default_nettype none


/* // Called with parameters, put this into your tb file


CA_Processor_32STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE1_ACTIVATES(32'b00000000000000000000000000000010), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE2_ACTIVATES(32'b00000000000000000000000000000100), 
     .ActivationVector_STE3(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE3_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE4(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE4_ACTIVATES(32'b00000000000000000000000000010000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE5_ACTIVATES(32'b00000000000000000000000000100000), 
     .ActivationVector_STE6(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE6_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE7(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE7_ACTIVATES(32'b00000000000000000000000010000000), 
     .ActivationVector_STE8(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE8_ACTIVATES(32'b00000000000000000000000100000000), 
     .ActivationVector_STE9(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE9_ACTIVATES(32'b00000000000000000000001000000000), 
     .ActivationVector_STE10(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE10_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE11(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE11_ACTIVATES(32'b00000000000000000000100000000000), 
     .ActivationVector_STE12(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE12_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE13(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE13_ACTIVATES(32'b00000000000000000010000000000000), 
     .ActivationVector_STE14(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE14_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE15(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE15_ACTIVATES(32'b00000000000000001000000000000000), 
     .ActivationVector_STE16(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE16_ACTIVATES(32'b00000000000000010000000000000000), 
     .ActivationVector_STE17(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE17_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE18(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE18_ACTIVATES(32'b00000000000001000000000000000000), 
     .ActivationVector_STE19(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE19_ACTIVATES(32'b00000000000010000000000000000000), 
     .ActivationVector_STE20(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE20_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE21(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE21_ACTIVATES(32'b00000000001000000000000000000000), 
     .ActivationVector_STE22(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE22_ACTIVATES(32'b00000000010000000000000000000000), 
     .ActivationVector_STE23(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE23_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE24(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE24_ACTIVATES(32'b00000001000000000000000000000000), 
     .ActivationVector_STE25(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE25_ACTIVATES(32'b00000010000000000000000000000000), 
     .ActivationVector_STE26(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE26_ACTIVATES(32'b00000100000000000000000000000000), 
     .ActivationVector_STE27(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE27_ACTIVATES(32'b00000000000000000000000000000000), 

      .start_vector(32'b00000000100100100101010001001001), 
      .end_vector(  32'b00000100010010010010101000100100) 
) CA_p_v1 ( 
.clk(clk), 
  .rst(rst),
 .input_word(input_word),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0)
);

*/ 




module OneBitToFixedBitsRouter_AUTOMATED #(parameter SELECT_BITS = 32'b00000000000000000000000000000000) (
    input wire input_bit,      // 1-bit input
    output wire [31:0] output_w  // 32-bit output
);

 // Define the fixed selection pattern 
assign  output_w = (SELECT_BITS & { input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit}); 

endmodule
module In8BitTo256OneHot ( 
 
    input wire [7:0] input_data,
    output wire [255:0] one_hot_encoding
);
    reg [255:0] one_hot_encoding_reg;
    integer i;
    always @(*) begin
        one_hot_encoding_reg = 256'b0;
        for (i = 0; i < 256; i = i + 1) begin
            if (input_data == i)
                one_hot_encoding_reg[i] = 1'b1;
        end
    end
    assign one_hot_encoding = one_hot_encoding_reg;
endmodule 




 module MatchConstant_AUTOMATED ( 
 input wire [255:0] input_number, 
    output wire output_match 
 ); 
    // Define the constant value to match against 
    parameter [255:0] CONSTANT_VALUE = 256'h0000000000000000000000000000000000000000000000000000000000000000; // Change this to your desired constant value 
    wire [255:0] bitwise_and_result; 
    assign bitwise_and_result = input_number & CONSTANT_VALUE; // Perform bitwise AND between number1 and number2 
    assign output_match =  |(bitwise_and_result);//(input_number == CONSTANT_VALUE) ? 1'b1 : 1'b0; 
  endmodule 
 

 //Automated Tb STARTS Here
module STE_MATCH_AUTOMATED_32bit_vector_8bit_word #( 
    parameter ActivationVector_STE1 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE2 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE3 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE4 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE5 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE6 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE7 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE8 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE9 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE10 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE11 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE12 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE13 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE14 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE15 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE16 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE17 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE18 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE19 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE20 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE21 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE22 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE23 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE24 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE25 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE26 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE27 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE28 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE29 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE30 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE31 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE32 = 256'h0000000000000000000000000000000000000000000000000000000000000000 
    )  (
    input wire clk,         // Clock input 
    input wire  [7:0] input_number, // 8-bit word input 
    output wire [31:0] data_out            // Match vector output 
);

wire output_match_STE1,output_match_STE2,output_match_STE3,output_match_STE4,output_match_STE5,output_match_STE6,output_match_STE7,output_match_STE8,output_match_STE9,output_match_STE10,output_match_STE11,output_match_STE12,output_match_STE13,output_match_STE14,output_match_STE15,output_match_STE16,output_match_STE17,output_match_STE18,output_match_STE19,output_match_STE20,output_match_STE21,output_match_STE22,output_match_STE23,output_match_STE24,output_match_STE25,output_match_STE26,output_match_STE27,output_match_STE28,output_match_STE29,output_match_STE30,output_match_STE31,output_match_STE32; 
wire [255:0] STE_encoding; 


In8BitTo256OneHot uut_1 (
 .input_data(input_number), 
 .one_hot_encoding(STE_encoding)  
 ); 
 
 MatchConstant_AUTOMATED #(ActivationVector_STE1) match_STE1 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE1) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE2) match_STE2 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE2) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE3) match_STE3 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE3) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE4) match_STE4 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE4) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE5) match_STE5 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE5) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE6) match_STE6 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE6) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE7) match_STE7 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE7) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE8) match_STE8 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE8) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE9) match_STE9 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE9) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE10) match_STE10 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE10) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE11) match_STE11 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE11) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE12) match_STE12 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE12) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE13) match_STE13 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE13) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE14) match_STE14 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE14) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE15) match_STE15 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE15) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE16) match_STE16 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE16) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE17) match_STE17 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE17) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE18) match_STE18 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE18) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE19) match_STE19 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE19) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE20) match_STE20 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE20) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE21) match_STE21 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE21) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE22) match_STE22 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE22) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE23) match_STE23 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE23) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE24) match_STE24 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE24) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE25) match_STE25 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE25) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE26) match_STE26 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE26) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE27) match_STE27 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE27) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE28) match_STE28 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE28) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE29) match_STE29 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE29) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE30) match_STE30 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE30) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE31) match_STE31 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE31) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE32) match_STE32 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE32) 
 ); 


reg [31:0] STE_MATCH_VECTOR;

  always @(posedge clk) begin 
        STE_MATCH_VECTOR <= {output_match_STE32,output_match_STE31,output_match_STE30,output_match_STE29,output_match_STE28,output_match_STE27,output_match_STE26,output_match_STE25,output_match_STE24,output_match_STE23,output_match_STE22,output_match_STE21,output_match_STE20,output_match_STE19,output_match_STE18,output_match_STE17,output_match_STE16,output_match_STE15,output_match_STE14,output_match_STE13,output_match_STE12,output_match_STE11,output_match_STE10,output_match_STE9,output_match_STE8,output_match_STE7,output_match_STE6,output_match_STE5,output_match_STE4,output_match_STE3,output_match_STE2,output_match_STE1}; 
    end
 assign data_out = STE_MATCH_VECTOR; 

 endmodule

module Local_Match_AUTOMATED #( 
    parameter   start_vector =  32'b00000000000000000000000000000000, 
    parameter     end_vector =  32'b00000000000000000000000000000000, 
    parameter STE1_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE2_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE3_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE4_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE5_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE6_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE7_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE8_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE9_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE10_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE11_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE12_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE13_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE14_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE15_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE16_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE17_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE18_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE19_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE20_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE21_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE22_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE23_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE24_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE25_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE26_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE27_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE28_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE29_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE30_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE31_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter STE32_ACTIVATES = 32'b00000000000000000000000000000000 
) (
  input wire clk,                       // Clock input
  input wire rst,                       //reset signal      
  input wire  [31:0]  local_ste_sw,      // 32-bit word input 
  input wire  [31:0]  active_ste_sw,     // 32-bit word input;
  output wire [31:0]  data_out,          // Match vector output
  output wire report_bit                // Match vector output
);
 
  wire [ 31:0] AND_sig,result_matrix;
 wire [ 31:0]  result_STE1,result_STE2,result_STE3,result_STE4,result_STE5,result_STE6,result_STE7,result_STE8,result_STE9,result_STE10,result_STE11,result_STE12,result_STE13,result_STE14,result_STE15,result_STE16,result_STE17,result_STE18,result_STE19,result_STE20,result_STE21,result_STE22,result_STE23,result_STE24,result_STE25,result_STE26,result_STE27,result_STE28,result_STE29,result_STE30,result_STE31,result_STE32; 

  reg [ 31:0]  out_bits; 
 
 
  assign AND_sig =  (local_ste_sw & (active_ste_sw|start_vector));
OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE1_ACTIVATES)) STE1_ROUTER ( 
    .input_bit(AND_sig[0]),
  .output_w(result_STE1)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE2_ACTIVATES)) STE2_ROUTER ( 
    .input_bit(AND_sig[1]),
  .output_w(result_STE2)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE3_ACTIVATES)) STE3_ROUTER ( 
    .input_bit(AND_sig[2]),
  .output_w(result_STE3)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE4_ACTIVATES)) STE4_ROUTER ( 
    .input_bit(AND_sig[3]),
  .output_w(result_STE4)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE5_ACTIVATES)) STE5_ROUTER ( 
    .input_bit(AND_sig[4]),
  .output_w(result_STE5)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE6_ACTIVATES)) STE6_ROUTER ( 
    .input_bit(AND_sig[5]),
  .output_w(result_STE6)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE7_ACTIVATES)) STE7_ROUTER ( 
    .input_bit(AND_sig[6]),
  .output_w(result_STE7)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE8_ACTIVATES)) STE8_ROUTER ( 
    .input_bit(AND_sig[7]),
  .output_w(result_STE8)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE9_ACTIVATES)) STE9_ROUTER ( 
    .input_bit(AND_sig[8]),
  .output_w(result_STE9)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE10_ACTIVATES)) STE10_ROUTER ( 
    .input_bit(AND_sig[9]),
  .output_w(result_STE10)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE11_ACTIVATES)) STE11_ROUTER ( 
    .input_bit(AND_sig[10]),
  .output_w(result_STE11)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE12_ACTIVATES)) STE12_ROUTER ( 
    .input_bit(AND_sig[11]),
  .output_w(result_STE12)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE13_ACTIVATES)) STE13_ROUTER ( 
    .input_bit(AND_sig[12]),
  .output_w(result_STE13)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE14_ACTIVATES)) STE14_ROUTER ( 
    .input_bit(AND_sig[13]),
  .output_w(result_STE14)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE15_ACTIVATES)) STE15_ROUTER ( 
    .input_bit(AND_sig[14]),
  .output_w(result_STE15)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE16_ACTIVATES)) STE16_ROUTER ( 
    .input_bit(AND_sig[15]),
  .output_w(result_STE16)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE17_ACTIVATES)) STE17_ROUTER ( 
    .input_bit(AND_sig[16]),
  .output_w(result_STE17)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE18_ACTIVATES)) STE18_ROUTER ( 
    .input_bit(AND_sig[17]),
  .output_w(result_STE18)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE19_ACTIVATES)) STE19_ROUTER ( 
    .input_bit(AND_sig[18]),
  .output_w(result_STE19)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE20_ACTIVATES)) STE20_ROUTER ( 
    .input_bit(AND_sig[19]),
  .output_w(result_STE20)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE21_ACTIVATES)) STE21_ROUTER ( 
    .input_bit(AND_sig[20]),
  .output_w(result_STE21)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE22_ACTIVATES)) STE22_ROUTER ( 
    .input_bit(AND_sig[21]),
  .output_w(result_STE22)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE23_ACTIVATES)) STE23_ROUTER ( 
    .input_bit(AND_sig[22]),
  .output_w(result_STE23)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE24_ACTIVATES)) STE24_ROUTER ( 
    .input_bit(AND_sig[23]),
  .output_w(result_STE24)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE25_ACTIVATES)) STE25_ROUTER ( 
    .input_bit(AND_sig[24]),
  .output_w(result_STE25)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE26_ACTIVATES)) STE26_ROUTER ( 
    .input_bit(AND_sig[25]),
  .output_w(result_STE26)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE27_ACTIVATES)) STE27_ROUTER ( 
    .input_bit(AND_sig[26]),
  .output_w(result_STE27)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE28_ACTIVATES)) STE28_ROUTER ( 
    .input_bit(AND_sig[27]),
  .output_w(result_STE28)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE29_ACTIVATES)) STE29_ROUTER ( 
    .input_bit(AND_sig[28]),
  .output_w(result_STE29)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE30_ACTIVATES)) STE30_ROUTER ( 
    .input_bit(AND_sig[29]),
  .output_w(result_STE30)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE31_ACTIVATES)) STE31_ROUTER ( 
    .input_bit(AND_sig[30]),
  .output_w(result_STE31)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE32_ACTIVATES)) STE32_ROUTER ( 
    .input_bit(AND_sig[31]),
  .output_w(result_STE32)
 ); 

assign  result_matrix = result_STE1|result_STE2|result_STE3|result_STE4|result_STE5|result_STE6|result_STE7|result_STE8|result_STE9|result_STE10|result_STE11|result_STE12|result_STE13|result_STE14|result_STE15|result_STE16|result_STE17|result_STE18|result_STE19|result_STE20|result_STE21|result_STE22|result_STE23|result_STE24|result_STE25|result_STE26|result_STE27|result_STE28|result_STE29|result_STE30|result_STE31|result_STE32; 

always @(posedge clk) begin
    if (rst == 1'b1) begin //Not active  
        out_bits <=  start_vector;
    end
    if (AND_sig == 32'b00000000000000000000000000000000) begin  
        out_bits <=  start_vector;     
    end else begin 
        out_bits <= result_matrix;
    end
  end
  assign data_out =  out_bits;
  assign report_bit = |(end_vector & AND_sig); 
endmodule






module CA_Processor_32STE_8bitword #(
    parameter   start_vector =  32'b00000000000000000000000000000000, 
    parameter     end_vector = 32'b00000000000000000000000000000000 ,
    parameter ActivationVector_STE1 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE1_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE2 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE2_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE3 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE3_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE4 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE4_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE5 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE5_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE6 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE6_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE7 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE7_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE8 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE8_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE9 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE9_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE10 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE10_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE11 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE11_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE12 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE12_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE13 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE13_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE14 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE14_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE15 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE15_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE16 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE16_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE17 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE17_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE18 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE18_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE19 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE19_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE20 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE20_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE21 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE21_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE22 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE22_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE23 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE23_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE24 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE24_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE25 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE25_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE26 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE26_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE27 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE27_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE28 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE28_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE29 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE29_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE30 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE30_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE31 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE31_ACTIVATES = 32'b00000000000000000000000000000000, 
    parameter ActivationVector_STE32 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE32_ACTIVATES = 32'b00000000000000000000000000000000 
)
(    input wire clk,
    input wire rst,
    input wire  [7:0] input_word,
    output wire rpt_bt,
    output wire [31:0] Activated_vector_t0 
);

   wire [31:0] AW_vector_t0;

  STE_MATCH_AUTOMATED_32bit_vector_8bit_word  #(
    .ActivationVector_STE1(ActivationVector_STE1), 
    .ActivationVector_STE2(ActivationVector_STE2), 
    .ActivationVector_STE3(ActivationVector_STE3), 
    .ActivationVector_STE4(ActivationVector_STE4), 
    .ActivationVector_STE5(ActivationVector_STE5), 
    .ActivationVector_STE6(ActivationVector_STE6), 
    .ActivationVector_STE7(ActivationVector_STE7), 
    .ActivationVector_STE8(ActivationVector_STE8), 
    .ActivationVector_STE9(ActivationVector_STE9), 
    .ActivationVector_STE10(ActivationVector_STE10), 
    .ActivationVector_STE11(ActivationVector_STE11), 
    .ActivationVector_STE12(ActivationVector_STE12), 
    .ActivationVector_STE13(ActivationVector_STE13), 
    .ActivationVector_STE14(ActivationVector_STE14), 
    .ActivationVector_STE15(ActivationVector_STE15), 
    .ActivationVector_STE16(ActivationVector_STE16), 
    .ActivationVector_STE17(ActivationVector_STE17), 
    .ActivationVector_STE18(ActivationVector_STE18), 
    .ActivationVector_STE19(ActivationVector_STE19), 
    .ActivationVector_STE20(ActivationVector_STE20), 
    .ActivationVector_STE21(ActivationVector_STE21), 
    .ActivationVector_STE22(ActivationVector_STE22), 
    .ActivationVector_STE23(ActivationVector_STE23), 
    .ActivationVector_STE24(ActivationVector_STE24), 
    .ActivationVector_STE25(ActivationVector_STE25), 
    .ActivationVector_STE26(ActivationVector_STE26), 
    .ActivationVector_STE27(ActivationVector_STE27), 
    .ActivationVector_STE28(ActivationVector_STE28), 
    .ActivationVector_STE29(ActivationVector_STE29), 
    .ActivationVector_STE30(ActivationVector_STE30), 
    .ActivationVector_STE31(ActivationVector_STE31), 
    .ActivationVector_STE32(ActivationVector_STE32) 

 ) word_to_STE_sensed (
 .clk(                 clk),             // Clock input
 .input_number( input_word), // 8-bit word input
 .data_out(   AW_vector_t0)        // Match vector output
);
 
Local_Match_AUTOMATED #( 
     .start_vector(start_vector), 
     .end_vector(end_vector), 
     .STE1_ACTIVATES(STE1_ACTIVATES), 
     .STE2_ACTIVATES(STE2_ACTIVATES), 
     .STE3_ACTIVATES(STE3_ACTIVATES), 
     .STE4_ACTIVATES(STE4_ACTIVATES), 
     .STE5_ACTIVATES(STE5_ACTIVATES), 
     .STE6_ACTIVATES(STE6_ACTIVATES), 
     .STE7_ACTIVATES(STE7_ACTIVATES), 
     .STE8_ACTIVATES(STE8_ACTIVATES), 
     .STE9_ACTIVATES(STE9_ACTIVATES), 
     .STE10_ACTIVATES(STE10_ACTIVATES), 
     .STE11_ACTIVATES(STE11_ACTIVATES), 
     .STE12_ACTIVATES(STE12_ACTIVATES), 
     .STE13_ACTIVATES(STE13_ACTIVATES), 
     .STE14_ACTIVATES(STE14_ACTIVATES), 
     .STE15_ACTIVATES(STE15_ACTIVATES), 
     .STE16_ACTIVATES(STE16_ACTIVATES), 
     .STE17_ACTIVATES(STE17_ACTIVATES), 
     .STE18_ACTIVATES(STE18_ACTIVATES), 
     .STE19_ACTIVATES(STE19_ACTIVATES), 
     .STE20_ACTIVATES(STE20_ACTIVATES), 
     .STE21_ACTIVATES(STE21_ACTIVATES), 
     .STE22_ACTIVATES(STE22_ACTIVATES), 
     .STE23_ACTIVATES(STE23_ACTIVATES), 
     .STE24_ACTIVATES(STE24_ACTIVATES), 
     .STE25_ACTIVATES(STE25_ACTIVATES), 
     .STE26_ACTIVATES(STE26_ACTIVATES), 
     .STE27_ACTIVATES(STE27_ACTIVATES), 
     .STE28_ACTIVATES(STE28_ACTIVATES), 
     .STE29_ACTIVATES(STE29_ACTIVATES), 
     .STE30_ACTIVATES(STE30_ACTIVATES), 
     .STE31_ACTIVATES(STE31_ACTIVATES), 
     .STE32_ACTIVATES(STE32_ACTIVATES) 
) STE_local_match (

  .clk(clk),                   // Clock input
  .rst(rst),               //reset signal      
  .local_ste_sw(AW_vector_t0),                // n-bit STE input
  .active_ste_sw(Activated_vector_t0),                // n-bit STE input;
  .data_out(Activated_vector_t0),              // Match vector output
  .report_bit(rpt_bt)             // Match vector output
);
 
 endmodule 
