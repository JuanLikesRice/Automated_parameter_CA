`timescale 1ns / 1ps 
 `default_nettype none


/* // Called with parameters, put this into your tb file


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

*/ 




module OneBitToFixedBitsRouter_AUTOMATED #(parameter SELECT_BITS = 8'b00000000) (
    input wire input_bit,      // 1-bit input
    output wire [7:0] output_w  // 8-bit output
);

 // Define the fixed selection pattern 
assign  output_w = (SELECT_BITS & { input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit ,input_bit}); 

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
module STE_MATCH_AUTOMATED_8bit_vector_8bit_word #( 
    parameter ActivationVector_STE1 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE2 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE3 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE4 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE5 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE6 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE7 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter ActivationVector_STE8 = 256'h0000000000000000000000000000000000000000000000000000000000000000 
    )  (
    input wire clk,         // Clock input 
    input wire  [7:0] input_number, // 8-bit word input 
    output wire [7:0] data_out            // Match vector output 
);

wire output_match_STE1,output_match_STE2,output_match_STE3,output_match_STE4,output_match_STE5,output_match_STE6,output_match_STE7,output_match_STE8; 
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


reg [7:0] STE_MATCH_VECTOR;

  always @(posedge clk) begin 
        STE_MATCH_VECTOR <= {output_match_STE8,output_match_STE7,output_match_STE6,output_match_STE5,output_match_STE4,output_match_STE3,output_match_STE2,output_match_STE1}; 
    end
 assign data_out = STE_MATCH_VECTOR; 

 endmodule

module Local_Match_AUTOMATED #( 
    parameter   start_vector =  8'b00000000, 
    parameter     end_vector =  8'b00000000, 
    parameter STE1_ACTIVATES = 8'b00000000, 
    parameter STE2_ACTIVATES = 8'b00000000, 
    parameter STE3_ACTIVATES = 8'b00000000, 
    parameter STE4_ACTIVATES = 8'b00000000, 
    parameter STE5_ACTIVATES = 8'b00000000, 
    parameter STE6_ACTIVATES = 8'b00000000, 
    parameter STE7_ACTIVATES = 8'b00000000, 
    parameter STE8_ACTIVATES = 8'b00000000 
) (
  input wire clk,                       // Clock input
  input wire rst,                       //reset signal      
  input wire  [7:0]  local_ste_sw,      // 8-bit word input 
  input wire  [7:0]  active_ste_sw,     // 8-bit word input;
  output wire [7:0]  data_out,          // Match vector output
  output wire report_bit                // Match vector output
);
 
  wire [ 7:0] AND_sig,result_matrix;
 wire [ 7:0]  result_STE1,result_STE2,result_STE3,result_STE4,result_STE5,result_STE6,result_STE7,result_STE8; 

  reg [ 7:0]  out_bits; 
 
 
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

assign  result_matrix = result_STE1|result_STE2|result_STE3|result_STE4|result_STE5|result_STE6|result_STE7|result_STE8; 

always @(posedge clk) begin
    if (rst == 1'b1) begin //Not active  
        out_bits <=  start_vector;
    end
    if (AND_sig == 8'b00000000) begin  
        out_bits <=  start_vector;     
    end else begin 
        out_bits <= result_matrix;
    end
  end
  assign data_out =  out_bits;
  assign report_bit = |(end_vector & AND_sig); 
endmodule






module CA_Processor_8STE_8bitword #(
    parameter   start_vector =  8'b00000000, 
    parameter     end_vector = 8'b00000000 ,
    parameter ActivationVector_STE1 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE1_ACTIVATES = 8'b00000000, 
    parameter ActivationVector_STE2 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE2_ACTIVATES = 8'b00000000, 
    parameter ActivationVector_STE3 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE3_ACTIVATES = 8'b00000000, 
    parameter ActivationVector_STE4 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE4_ACTIVATES = 8'b00000000, 
    parameter ActivationVector_STE5 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE5_ACTIVATES = 8'b00000000, 
    parameter ActivationVector_STE6 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE6_ACTIVATES = 8'b00000000, 
    parameter ActivationVector_STE7 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE7_ACTIVATES = 8'b00000000, 
    parameter ActivationVector_STE8 = 256'h0000000000000000000000000000000000000000000000000000000000000000, 
    parameter        STE8_ACTIVATES = 8'b00000000 
)
(    input wire clk,
    input wire rst,
    input wire  [7:0] input_word,
    output wire rpt_bt,
    output wire [7:0] Activated_vector_t0 
);

   wire [7:0] AW_vector_t0;

  STE_MATCH_AUTOMATED_8bit_vector_8bit_word  #(
    .ActivationVector_STE1(ActivationVector_STE1), 
    .ActivationVector_STE2(ActivationVector_STE2), 
    .ActivationVector_STE3(ActivationVector_STE3), 
    .ActivationVector_STE4(ActivationVector_STE4), 
    .ActivationVector_STE5(ActivationVector_STE5), 
    .ActivationVector_STE6(ActivationVector_STE6), 
    .ActivationVector_STE7(ActivationVector_STE7), 
    .ActivationVector_STE8(ActivationVector_STE8) 

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
     .STE8_ACTIVATES(STE8_ACTIVATES) 
) STE_local_match (

  .clk(clk),                   // Clock input
  .rst(rst),               //reset signal      
  .local_ste_sw(AW_vector_t0),                // n-bit STE input
  .active_ste_sw(Activated_vector_t0),                // n-bit STE input;
  .data_out(Activated_vector_t0),              // Match vector output
  .report_bit(rpt_bt)             // Match vector output
);
 
 endmodule 
