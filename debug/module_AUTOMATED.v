`timescale 1ns / 1ps 
 `default_nettype none


/* // Called with parameters, put this into your tb file


CA_Processor_64STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000000000608000000000000000000), 
            .STE1_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000000010), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000000004032020000000000000000), 
            .STE2_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000000100), 
     .ActivationVector_STE3(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE3_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000001000), 
     .ActivationVector_STE4(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE4_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000010000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000000005812820000000000000000), 
            .STE5_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000100000), 
     .ActivationVector_STE6(256'hfffffffffffffffffffffffffffffffffffffffffd7ebf2fffffffffffffffff), 
            .STE6_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000001000000), 
     .ActivationVector_STE7(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE7_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000010000000), 
     .ActivationVector_STE8(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE8_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000100000000), 
     .ActivationVector_STE9(256'h0000000000000000000000000000000000000000004832020000000000000000), 
            .STE9_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000001000000000), 
     .ActivationVector_STE10(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE10_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000010000000000), 
     .ActivationVector_STE11(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE11_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000100000000000), 
     .ActivationVector_STE12(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE12_ACTIVATES(64'b0000000000000000000000000000000000000000000000000001000000000000), 
     .ActivationVector_STE13(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE13_ACTIVATES(64'b0000000000000000000000000000000000000000000001111110000000000000), 
     .ActivationVector_STE14(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE14_ACTIVATES(64'b0000000000000000000000000000000000000000000001111100000000000000), 
     .ActivationVector_STE15(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE15_ACTIVATES(64'b0000000000000000000000000000000000000000000001111000000000000000), 
     .ActivationVector_STE16(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE16_ACTIVATES(64'b0000000000000000000000000000000000000000000001110000000000000000), 
     .ActivationVector_STE17(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE17_ACTIVATES(64'b0000000000000000000000000000000000000000000001100000000000000000), 
     .ActivationVector_STE18(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE18_ACTIVATES(64'b0000000000000000000000000000000000000000000001000000000000000000), 
     .ActivationVector_STE19(256'h0000000000000000000000000000000000000000004032400000000000000000), 
            .STE19_ACTIVATES(64'b0000000000000000000000000000000000000000000010000000000000000000), 
     .ActivationVector_STE20(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE20_ACTIVATES(64'b0000000000000000000000000000000000000000000100000000000000000000), 
     .ActivationVector_STE21(256'hfffffffffffffffffffffffffffffffffffffffffffeeeffffffffffffffffff), 
            .STE21_ACTIVATES(64'b0000000000000000000000000000000000000000001000000000000000000000), 
     .ActivationVector_STE22(256'h0000000000000000000000000000000000000000005832020000000000000000), 
            .STE22_ACTIVATES(64'b0000000000000000000000000000000000000000010000000000000000000000), 
     .ActivationVector_STE23(256'h00000000000000000000000000000000000000000018128a0000000000000000), 
            .STE23_ACTIVATES(64'b0000000000000000000000000000000000000000100000000000000000000000), 
     .ActivationVector_STE24(256'hfffffffffffffffffffffffffffffffffffffffffffef77fffffffffffffffff), 
            .STE24_ACTIVATES(64'b0000000000000000000000000000000000000001000000000000000000000000), 
     .ActivationVector_STE25(256'hffffffffffffffffffffffffffffffffffffffffffffffbfffffffffffffffff), 
            .STE25_ACTIVATES(64'b0000000000000000000000000000000000000010000000000000000000000000), 
     .ActivationVector_STE26(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE26_ACTIVATES(64'b0000000000000000000000000000000000000100000000000000000000000000), 
     .ActivationVector_STE27(256'h0000000000000000000000000000000000000000000640c20000000000000000), 
            .STE27_ACTIVATES(64'b0000000000000000000000000000000000001000000000000000000000000000), 
     .ActivationVector_STE28(256'h0000000000000000000000000000000000000000024032400000000000000000), 
            .STE28_ACTIVATES(64'b0000000000000000000000000000000000010000000000000000000000000000), 
     .ActivationVector_STE29(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE29_ACTIVATES(64'b0000000000000000000000000000000000100000000000000000000000000000), 
     .ActivationVector_STE30(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE30_ACTIVATES(64'b0000000000000000000000000000000001000000000000000000000000000000), 
     .ActivationVector_STE31(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE31_ACTIVATES(64'b0000000000000000000000000000000010000000000000000000000000000000), 
     .ActivationVector_STE32(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE32_ACTIVATES(64'b0000000000000000000000000000001100000000000000000000000000000000), 
     .ActivationVector_STE33(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE33_ACTIVATES(64'b0000000000000000000000000000001000000000000000000000000000000000), 
     .ActivationVector_STE34(256'h0000000000000000000000000000000000000000020010400000000000000000), 
            .STE34_ACTIVATES(64'b0000000000000000000000000000010000000000000000000000000000000000), 
     .ActivationVector_STE35(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE35_ACTIVATES(64'b0000000000000000000000000000100000000000000000000000000000000000), 
     .ActivationVector_STE36(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE36_ACTIVATES(64'b0000000000000000000000000001000000000000000000000000000000000000), 
     .ActivationVector_STE37(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE37_ACTIVATES(64'b0000000000000000000000000010000000000000000000000000000000000000), 
     .ActivationVector_STE38(256'h0000000000000000000000000000000000000000024002420000000000000000), 
            .STE38_ACTIVATES(64'b0000000000000000000000000100000000000000000000000000000000000000), 
     .ActivationVector_STE39(256'hfffffffffffffffffffffffffffffffffffffffffd7fdeb7ffffffffffffffff), 
            .STE39_ACTIVATES(64'b0000000000000000000000001000000000000000000000000000000000000000), 
     .ActivationVector_STE40(256'hffffffffffffffffffffffffffffffffffffffffffbefd7fffffffffffffffff), 
            .STE40_ACTIVATES(64'b0000000000000000000000010000000000000000000000000000000000000000), 
     .ActivationVector_STE41(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE41_ACTIVATES(64'b0000000000000000000000100000000000000000000000000000000000000000), 
     .ActivationVector_STE42(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE42_ACTIVATES(64'b0000000000000000000001000000000000000000000000000000000000000000), 
     .ActivationVector_STE43(256'h0000000000000000000000000000000000000000000e48b20000000000000000), 
            .STE43_ACTIVATES(64'b0000000000000000000010000000000000000000000000000000000000000000), 
     .ActivationVector_STE44(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE44_ACTIVATES(64'b0000000000000000000100000000000000000000000000000000000000000000), 
     .ActivationVector_STE45(256'h0000000000000000000000000000000000000000001958020000000000000000), 
            .STE45_ACTIVATES(64'b0000000000000000001000000000000000000000000000000000000000000000), 
     .ActivationVector_STE46(256'h0000000000000000000000000000000000000000000510020000000000000000), 
            .STE46_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000000000), 

      .start_vector(64'b0000000000000000000000000000000000000000000000000000000000000001), 
      .end_vector(  64'b0000000000000000001000000000000000000000000000000000000000000000) 
) CA_p_v1 ( 
.clk(clk), 
  .rst(rst),
 .input_word(input_word),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0),
 .word_report_bit_out(word_report_bit_out)
);

*/ 




module OneBitToFixedBitsRouter_AUTOMATED #(parameter SELECT_BITS = 64'b0000000000000000000000000000000000000000000000000000000000000000) (
    input wire input_bit,      // 1-bit input
    output wire [63:0] output_w  // 64-bit output
);

 // Define the fixed selection pattern 
assign  output_w = (SELECT_BITS & { input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit}); 

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
module STE_MATCH_AUTOMATED_64bit_vector_8bit_word #( 
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
    parameter ActivationVector_STE32 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE33 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE34 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE35 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE36 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE37 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE38 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE39 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE40 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE41 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE42 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE43 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE44 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE45 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE46 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE47 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE48 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE49 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE50 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE51 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE52 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE53 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE54 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE55 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE56 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE57 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE58 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE59 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE60 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE61 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE62 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE63 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE64 = 256'h0000000000000000000000000000000000000000000000000000000000000000 
    )  (
    input wire clk,         // Clock input 
    input wire  [7:0] input_number, // 8-bit word input 
    output wire [63:0] data_out            // Match vector output 
);

wire output_match_STE1,output_match_STE2,output_match_STE3,output_match_STE4,output_match_STE5,output_match_STE6,output_match_STE7,output_match_STE8,output_match_STE9,output_match_STE10,output_match_STE11,output_match_STE12,output_match_STE13,output_match_STE14,output_match_STE15,output_match_STE16,output_match_STE17,output_match_STE18,output_match_STE19,output_match_STE20,output_match_STE21,output_match_STE22,output_match_STE23,output_match_STE24,output_match_STE25,output_match_STE26,output_match_STE27,output_match_STE28,output_match_STE29,output_match_STE30,output_match_STE31,output_match_STE32,output_match_STE33,output_match_STE34,output_match_STE35,output_match_STE36,output_match_STE37,output_match_STE38,output_match_STE39,output_match_STE40,output_match_STE41,output_match_STE42,output_match_STE43,output_match_STE44,output_match_STE45,output_match_STE46,output_match_STE47,output_match_STE48,output_match_STE49,output_match_STE50,output_match_STE51,output_match_STE52,output_match_STE53,output_match_STE54,output_match_STE55,output_match_STE56,output_match_STE57,output_match_STE58,output_match_STE59,output_match_STE60,output_match_STE61,output_match_STE62,output_match_STE63,output_match_STE64; 
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


MatchConstant_AUTOMATED #(ActivationVector_STE33) match_STE33 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE33) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE34) match_STE34 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE34) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE35) match_STE35 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE35) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE36) match_STE36 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE36) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE37) match_STE37 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE37) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE38) match_STE38 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE38) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE39) match_STE39 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE39) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE40) match_STE40 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE40) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE41) match_STE41 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE41) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE42) match_STE42 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE42) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE43) match_STE43 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE43) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE44) match_STE44 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE44) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE45) match_STE45 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE45) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE46) match_STE46 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE46) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE47) match_STE47 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE47) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE48) match_STE48 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE48) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE49) match_STE49 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE49) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE50) match_STE50 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE50) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE51) match_STE51 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE51) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE52) match_STE52 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE52) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE53) match_STE53 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE53) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE54) match_STE54 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE54) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE55) match_STE55 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE55) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE56) match_STE56 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE56) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE57) match_STE57 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE57) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE58) match_STE58 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE58) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE59) match_STE59 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE59) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE60) match_STE60 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE60) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE61) match_STE61 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE61) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE62) match_STE62 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE62) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE63) match_STE63 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE63) 
 ); 


MatchConstant_AUTOMATED #(ActivationVector_STE64) match_STE64 ( 
 .input_number(STE_encoding), 
 .output_match(output_match_STE64) 
 ); 


reg [63:0] STE_MATCH_VECTOR;
initial begin 
    STE_MATCH_VECTOR <=  64'b0; 
 end   


  always @(posedge clk) begin 
        STE_MATCH_VECTOR <= {output_match_STE64,output_match_STE63,output_match_STE62,output_match_STE61,output_match_STE60,output_match_STE59,output_match_STE58,output_match_STE57,output_match_STE56,output_match_STE55,output_match_STE54,output_match_STE53,output_match_STE52,output_match_STE51,output_match_STE50,output_match_STE49,output_match_STE48,output_match_STE47,output_match_STE46,output_match_STE45,output_match_STE44,output_match_STE43,output_match_STE42,output_match_STE41,output_match_STE40,output_match_STE39,output_match_STE38,output_match_STE37,output_match_STE36,output_match_STE35,output_match_STE34,output_match_STE33,output_match_STE32,output_match_STE31,output_match_STE30,output_match_STE29,output_match_STE28,output_match_STE27,output_match_STE26,output_match_STE25,output_match_STE24,output_match_STE23,output_match_STE22,output_match_STE21,output_match_STE20,output_match_STE19,output_match_STE18,output_match_STE17,output_match_STE16,output_match_STE15,output_match_STE14,output_match_STE13,output_match_STE12,output_match_STE11,output_match_STE10,output_match_STE9,output_match_STE8,output_match_STE7,output_match_STE6,output_match_STE5,output_match_STE4,output_match_STE3,output_match_STE2,output_match_STE1}; 
    end
 assign data_out = STE_MATCH_VECTOR; 

 endmodule

module Local_Match_AUTOMATED #( 
    parameter   start_vector =  64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter     end_vector =  64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE1_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE2_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE3_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE4_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE5_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE6_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE7_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE8_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE9_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE10_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE11_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE12_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE13_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE14_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE15_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE16_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE17_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE18_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE19_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE20_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE21_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE22_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE23_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE24_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE25_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE26_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE27_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE28_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE29_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE30_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE31_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE32_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE33_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE34_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE35_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE36_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE37_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE38_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE39_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE40_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE41_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE42_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE43_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE44_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE45_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE46_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE47_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE48_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE49_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE50_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE51_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE52_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE53_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE54_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE55_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE56_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE57_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE58_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE59_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE60_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE61_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE62_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE63_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter STE64_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000 
) (
  input wire clk,                       // Clock input
  input wire rst,                       //reset signal      
  input wire  [63:0]  local_ste_sw,      // 64-bit word input 
  input wire  [63:0]  active_ste_sw,     // 64-bit word input;
  output wire [63:0]  data_out,          // Match vector output
  output wire report_bit                // Match vector output
);
 
  wire [ 63:0] AND_sig,result_matrix;
 wire [ 63:0]  result_STE1,result_STE2,result_STE3,result_STE4,result_STE5,result_STE6,result_STE7,result_STE8,result_STE9,result_STE10,result_STE11,result_STE12,result_STE13,result_STE14,result_STE15,result_STE16,result_STE17,result_STE18,result_STE19,result_STE20,result_STE21,result_STE22,result_STE23,result_STE24,result_STE25,result_STE26,result_STE27,result_STE28,result_STE29,result_STE30,result_STE31,result_STE32,result_STE33,result_STE34,result_STE35,result_STE36,result_STE37,result_STE38,result_STE39,result_STE40,result_STE41,result_STE42,result_STE43,result_STE44,result_STE45,result_STE46,result_STE47,result_STE48,result_STE49,result_STE50,result_STE51,result_STE52,result_STE53,result_STE54,result_STE55,result_STE56,result_STE57,result_STE58,result_STE59,result_STE60,result_STE61,result_STE62,result_STE63,result_STE64; 

  reg [ 63:0]  out_bits; 
 
 
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

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE33_ACTIVATES)) STE33_ROUTER ( 
    .input_bit(AND_sig[32]),
  .output_w(result_STE33)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE34_ACTIVATES)) STE34_ROUTER ( 
    .input_bit(AND_sig[33]),
  .output_w(result_STE34)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE35_ACTIVATES)) STE35_ROUTER ( 
    .input_bit(AND_sig[34]),
  .output_w(result_STE35)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE36_ACTIVATES)) STE36_ROUTER ( 
    .input_bit(AND_sig[35]),
  .output_w(result_STE36)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE37_ACTIVATES)) STE37_ROUTER ( 
    .input_bit(AND_sig[36]),
  .output_w(result_STE37)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE38_ACTIVATES)) STE38_ROUTER ( 
    .input_bit(AND_sig[37]),
  .output_w(result_STE38)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE39_ACTIVATES)) STE39_ROUTER ( 
    .input_bit(AND_sig[38]),
  .output_w(result_STE39)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE40_ACTIVATES)) STE40_ROUTER ( 
    .input_bit(AND_sig[39]),
  .output_w(result_STE40)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE41_ACTIVATES)) STE41_ROUTER ( 
    .input_bit(AND_sig[40]),
  .output_w(result_STE41)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE42_ACTIVATES)) STE42_ROUTER ( 
    .input_bit(AND_sig[41]),
  .output_w(result_STE42)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE43_ACTIVATES)) STE43_ROUTER ( 
    .input_bit(AND_sig[42]),
  .output_w(result_STE43)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE44_ACTIVATES)) STE44_ROUTER ( 
    .input_bit(AND_sig[43]),
  .output_w(result_STE44)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE45_ACTIVATES)) STE45_ROUTER ( 
    .input_bit(AND_sig[44]),
  .output_w(result_STE45)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE46_ACTIVATES)) STE46_ROUTER ( 
    .input_bit(AND_sig[45]),
  .output_w(result_STE46)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE47_ACTIVATES)) STE47_ROUTER ( 
    .input_bit(AND_sig[46]),
  .output_w(result_STE47)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE48_ACTIVATES)) STE48_ROUTER ( 
    .input_bit(AND_sig[47]),
  .output_w(result_STE48)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE49_ACTIVATES)) STE49_ROUTER ( 
    .input_bit(AND_sig[48]),
  .output_w(result_STE49)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE50_ACTIVATES)) STE50_ROUTER ( 
    .input_bit(AND_sig[49]),
  .output_w(result_STE50)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE51_ACTIVATES)) STE51_ROUTER ( 
    .input_bit(AND_sig[50]),
  .output_w(result_STE51)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE52_ACTIVATES)) STE52_ROUTER ( 
    .input_bit(AND_sig[51]),
  .output_w(result_STE52)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE53_ACTIVATES)) STE53_ROUTER ( 
    .input_bit(AND_sig[52]),
  .output_w(result_STE53)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE54_ACTIVATES)) STE54_ROUTER ( 
    .input_bit(AND_sig[53]),
  .output_w(result_STE54)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE55_ACTIVATES)) STE55_ROUTER ( 
    .input_bit(AND_sig[54]),
  .output_w(result_STE55)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE56_ACTIVATES)) STE56_ROUTER ( 
    .input_bit(AND_sig[55]),
  .output_w(result_STE56)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE57_ACTIVATES)) STE57_ROUTER ( 
    .input_bit(AND_sig[56]),
  .output_w(result_STE57)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE58_ACTIVATES)) STE58_ROUTER ( 
    .input_bit(AND_sig[57]),
  .output_w(result_STE58)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE59_ACTIVATES)) STE59_ROUTER ( 
    .input_bit(AND_sig[58]),
  .output_w(result_STE59)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE60_ACTIVATES)) STE60_ROUTER ( 
    .input_bit(AND_sig[59]),
  .output_w(result_STE60)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE61_ACTIVATES)) STE61_ROUTER ( 
    .input_bit(AND_sig[60]),
  .output_w(result_STE61)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE62_ACTIVATES)) STE62_ROUTER ( 
    .input_bit(AND_sig[61]),
  .output_w(result_STE62)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE63_ACTIVATES)) STE63_ROUTER ( 
    .input_bit(AND_sig[62]),
  .output_w(result_STE63)
 ); 

OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE64_ACTIVATES)) STE64_ROUTER ( 
    .input_bit(AND_sig[63]),
  .output_w(result_STE64)
 ); 

assign  result_matrix = result_STE1|result_STE2|result_STE3|result_STE4|result_STE5|result_STE6|result_STE7|result_STE8|result_STE9|result_STE10|result_STE11|result_STE12|result_STE13|result_STE14|result_STE15|result_STE16|result_STE17|result_STE18|result_STE19|result_STE20|result_STE21|result_STE22|result_STE23|result_STE24|result_STE25|result_STE26|result_STE27|result_STE28|result_STE29|result_STE30|result_STE31|result_STE32|result_STE33|result_STE34|result_STE35|result_STE36|result_STE37|result_STE38|result_STE39|result_STE40|result_STE41|result_STE42|result_STE43|result_STE44|result_STE45|result_STE46|result_STE47|result_STE48|result_STE49|result_STE50|result_STE51|result_STE52|result_STE53|result_STE54|result_STE55|result_STE56|result_STE57|result_STE58|result_STE59|result_STE60|result_STE61|result_STE62|result_STE63|result_STE64; 
initial begin 
   out_bits <=  start_vector; 
 end   


always @(posedge clk) begin
    if (rst == 1'b1) begin //Not active  
        out_bits <=  start_vector;
    end
    if (AND_sig == 64'b0000000000000000000000000000000000000000000000000000000000000000) begin  
        out_bits <=  start_vector;     
    end else begin 
        out_bits <= result_matrix;
    end
  end
  assign data_out =  out_bits;
  assign report_bit = |(end_vector & AND_sig); 
endmodule






module CA_Processor_64STE_8bitword #(
    parameter   start_vector =  64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter     end_vector = 64'b0000000000000000000000000000000000000000000000000000000000000000 ,
    parameter ActivationVector_STE1 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE1_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE2 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE2_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE3 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE3_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE4 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE4_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE5 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE5_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE6 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE6_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE7 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE7_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE8 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE8_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE9 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE9_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE10 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE10_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE11 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE11_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE12 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE12_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE13 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE13_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE14 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE14_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE15 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE15_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE16 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE16_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE17 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE17_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE18 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE18_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE19 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE19_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE20 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE20_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE21 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE21_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE22 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE22_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE23 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE23_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE24 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE24_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE25 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE25_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE26 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE26_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE27 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE27_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE28 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE28_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE29 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE29_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE30 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE30_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE31 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE31_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE32 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE32_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE33 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE33_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE34 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE34_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE35 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE35_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE36 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE36_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE37 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE37_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE38 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE38_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE39 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE39_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE40 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE40_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE41 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE41_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE42 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE42_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE43 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE43_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE44 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE44_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE45 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE45_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE46 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE46_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE47 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE47_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE48 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE48_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE49 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE49_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE50 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE50_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE51 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE51_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE52 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE52_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE53 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE53_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE54 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE54_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE55 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE55_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE56 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE56_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE57 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE57_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE58 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE58_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE59 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE59_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE60 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE60_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE61 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE61_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE62 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE62_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE63 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE63_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE64 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE64_ACTIVATES = 64'b0000000000000000000000000000000000000000000000000000000000000000 
)
(    input wire clk,
    input wire rst,
    input wire  [7:0] input_word,
  output wire  [7:0] word_report_bit_out,
   output wire rpt_bt,
    output wire [63:0] Activated_vector_t0 
);

   wire [63:0] AW_vector_t0;

  STE_MATCH_AUTOMATED_64bit_vector_8bit_word  #(
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
    .ActivationVector_STE32(ActivationVector_STE32), 
    .ActivationVector_STE33(ActivationVector_STE33), 
    .ActivationVector_STE34(ActivationVector_STE34), 
    .ActivationVector_STE35(ActivationVector_STE35), 
    .ActivationVector_STE36(ActivationVector_STE36), 
    .ActivationVector_STE37(ActivationVector_STE37), 
    .ActivationVector_STE38(ActivationVector_STE38), 
    .ActivationVector_STE39(ActivationVector_STE39), 
    .ActivationVector_STE40(ActivationVector_STE40), 
    .ActivationVector_STE41(ActivationVector_STE41), 
    .ActivationVector_STE42(ActivationVector_STE42), 
    .ActivationVector_STE43(ActivationVector_STE43), 
    .ActivationVector_STE44(ActivationVector_STE44), 
    .ActivationVector_STE45(ActivationVector_STE45), 
    .ActivationVector_STE46(ActivationVector_STE46), 
    .ActivationVector_STE47(ActivationVector_STE47), 
    .ActivationVector_STE48(ActivationVector_STE48), 
    .ActivationVector_STE49(ActivationVector_STE49), 
    .ActivationVector_STE50(ActivationVector_STE50), 
    .ActivationVector_STE51(ActivationVector_STE51), 
    .ActivationVector_STE52(ActivationVector_STE52), 
    .ActivationVector_STE53(ActivationVector_STE53), 
    .ActivationVector_STE54(ActivationVector_STE54), 
    .ActivationVector_STE55(ActivationVector_STE55), 
    .ActivationVector_STE56(ActivationVector_STE56), 
    .ActivationVector_STE57(ActivationVector_STE57), 
    .ActivationVector_STE58(ActivationVector_STE58), 
    .ActivationVector_STE59(ActivationVector_STE59), 
    .ActivationVector_STE60(ActivationVector_STE60), 
    .ActivationVector_STE61(ActivationVector_STE61), 
    .ActivationVector_STE62(ActivationVector_STE62), 
    .ActivationVector_STE63(ActivationVector_STE63), 
    .ActivationVector_STE64(ActivationVector_STE64) 

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
     .STE32_ACTIVATES(STE32_ACTIVATES), 
     .STE33_ACTIVATES(STE33_ACTIVATES), 
     .STE34_ACTIVATES(STE34_ACTIVATES), 
     .STE35_ACTIVATES(STE35_ACTIVATES), 
     .STE36_ACTIVATES(STE36_ACTIVATES), 
     .STE37_ACTIVATES(STE37_ACTIVATES), 
     .STE38_ACTIVATES(STE38_ACTIVATES), 
     .STE39_ACTIVATES(STE39_ACTIVATES), 
     .STE40_ACTIVATES(STE40_ACTIVATES), 
     .STE41_ACTIVATES(STE41_ACTIVATES), 
     .STE42_ACTIVATES(STE42_ACTIVATES), 
     .STE43_ACTIVATES(STE43_ACTIVATES), 
     .STE44_ACTIVATES(STE44_ACTIVATES), 
     .STE45_ACTIVATES(STE45_ACTIVATES), 
     .STE46_ACTIVATES(STE46_ACTIVATES), 
     .STE47_ACTIVATES(STE47_ACTIVATES), 
     .STE48_ACTIVATES(STE48_ACTIVATES), 
     .STE49_ACTIVATES(STE49_ACTIVATES), 
     .STE50_ACTIVATES(STE50_ACTIVATES), 
     .STE51_ACTIVATES(STE51_ACTIVATES), 
     .STE52_ACTIVATES(STE52_ACTIVATES), 
     .STE53_ACTIVATES(STE53_ACTIVATES), 
     .STE54_ACTIVATES(STE54_ACTIVATES), 
     .STE55_ACTIVATES(STE55_ACTIVATES), 
     .STE56_ACTIVATES(STE56_ACTIVATES), 
     .STE57_ACTIVATES(STE57_ACTIVATES), 
     .STE58_ACTIVATES(STE58_ACTIVATES), 
     .STE59_ACTIVATES(STE59_ACTIVATES), 
     .STE60_ACTIVATES(STE60_ACTIVATES), 
     .STE61_ACTIVATES(STE61_ACTIVATES), 
     .STE62_ACTIVATES(STE62_ACTIVATES), 
     .STE63_ACTIVATES(STE63_ACTIVATES), 
     .STE64_ACTIVATES(STE64_ACTIVATES) 
) STE_local_match (

  .clk(clk),                   // Clock input
  .rst(rst),               //reset signal      
  .local_ste_sw(AW_vector_t0),                // n-bit STE input
  .active_ste_sw(Activated_vector_t0),                // n-bit STE input;
  .data_out(Activated_vector_t0),              // Match vector output
  .report_bit(rpt_bt)             // Match vector output
);
 
 


 reg  [7:0] word_report_bit;
initial begin 
 word_report_bit <= 8'b0; 
 end
always @(posedge clk) begin  
  word_report_bit <= input_word;
end
assign word_report_bit_out = word_report_bit;

endmodule