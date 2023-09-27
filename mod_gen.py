


# Specify the file path (change this to your desired file path)
file_path = "module_AUTOMATED.v"

N_STE_BITS = 32
Input_word_BITS = 8
#[STE,[turn off if], [if on, turn on], start?, end]
graph =[[1,["a"],[3,8],1,0],
        [2,["a"],[3,8],0,0],
        [3,["r"],[4]  ,0,1],
        [4,["t"],[]   ,0,1],
        [5,["b"],[6,] ,1,0],
        [6,["a"],[3,8],0,0],
        [7,["c"],[6]  ,1,0],
        [8,["t"],[]   ,0,1]]




def STE_sense_vector(list,Input_word_BITS):
    Input_word_BITS_val = 2**(Input_word_BITS)
    Input_word_BITS_val_hex = int(Input_word_BITS_val /  4  )

    num_i_bit = 0
    for i in range(len(list)):
        str_num = ord(list[i])
        num_i_bit += 2**(str_num)
    num_i =hex(num_i_bit) 
    ste_vect_string =f"{Input_word_BITS_val}'h"+"0"*(Input_word_BITS_val_hex-(len(num_i)-2))+num_i[2:]
    return ste_vect_string
def STE_activates(list,N_STE_BITS):
    STE_fanout = 0#bin("0"*int(N_STE_BITS))
    for i in range(len(list)):
        STE_fanout |= 2**(int((list[i])-1))
    num_i =bin(STE_fanout) 
    ste_vect_string = f"{N_STE_BITS}'b"+"0"*(N_STE_BITS-(len(num_i)-2))+num_i[2:]
    return ste_vect_string



N_STE_BITS_minus1 = N_STE_BITS - 1
Input_word_BITS_val = 2**(Input_word_BITS)
Input_word_BITS_val_hex = int(Input_word_BITS_val /  4  )
zero_string = "0"
zero_STE_BITS    = str(N_STE_BITS)+ "\'b" + zero_string*N_STE_BITS
zero_Input_WORD =  str(Input_word_BITS_val)+ "\'h" + zero_string*Input_word_BITS_val_hex

print(zero_STE_BITS)
print(zero_Input_WORD)



# MATCH MODULE
print("Writing the match")
# Open the file in write mode ('w' mode) and create it if it doesn't exist
with open(file_path, 'w') as file:
    file.write(f"module OneBitToFixedBitsRouter_AUTOMATED #(parameter SELECT_BITS = {zero_STE_BITS}) (\n    input wire input_bit,      // 1-bit input\n    output wire [{N_STE_BITS-1}:0] output_w  // {N_STE_BITS}-bit output\n);\n\n // Define the fixed selection pattern \n")
    
    starting_string = "assign  output_w = (SELECT_BITS & { "
    string1 =  "input_bit"
    string2 =  " ,input_bit"
    total_string = starting_string + string1 + string2*int(N_STE_BITS-1) + "}); \n"
    file.write(total_string)
    file.write("\nendmodule\n")
    
    
    file.write(f"module In{Input_word_BITS}BitTo{Input_word_BITS_val}OneHot ( \n \n    input wire [{Input_word_BITS-1}:0] input_data,\n    output wire [{Input_word_BITS_val-1}:0] one_hot_encoding\n);\n    reg [{Input_word_BITS_val-1}:0] one_hot_encoding_reg;\n    integer i;\n    always @(*) begin\n        one_hot_encoding_reg = {Input_word_BITS_val}'b0;\n        for (i = 0; i < {Input_word_BITS_val}; i = i + 1) begin\n            if (input_data == i)\n                one_hot_encoding_reg[i] = 1'b1;\n        end\n    end\n    assign one_hot_encoding = one_hot_encoding_reg;\nendmodule \n\n\n\n" )

    file.write(f"\n module MatchConstant_AUTOMATED ( \n input wire [{Input_word_BITS_val-1}:0] input_number, \n    output wire output_match \n ); \n    // Define the constant value to match against \n    parameter [{Input_word_BITS_val-1}:0] CONSTANT_VALUE = {zero_Input_WORD}; // Change this to your desired constant value \n    wire [{Input_word_BITS_val-1}:0] bitwise_and_result; \n    assign bitwise_and_result = input_number & CONSTANT_VALUE; // Perform bitwise AND between number1 and number2 \n    assign output_match =  |(bitwise_and_result);//(input_number == CONSTANT_VALUE) ? 1'b1 : 1'b0; \n  endmodule \n \n\n ")

    # Write each line to the file one by one
    file.write("//Automated Tb STARTS Here\n")
    file.write(f"module STE_MATCH_AUTOMATED_{N_STE_BITS}bit_vector_{Input_word_BITS}bit_word #( \n")


    for i in range(N_STE_BITS-1):
        #str_num = ord(str(char))
        file.write(f"    parameter ActivationVector_STE{i+1} = {zero_Input_WORD}, \n")
    file.write(f"    parameter ActivationVector_STE{N_STE_BITS} = {zero_Input_WORD} \n")

#    file.write("#10; \n")
#    file.write("//Automated Tb ENDS Here\n")
    file.write(f"    )  (\n    input wire clk,         // Clock input \n    input wire  [{Input_word_BITS-1}:0] input_number, // 8-bit word input \n")
    file.write(f"    output wire [{N_STE_BITS-1}:0] data_out            // Match vector output \n);\n\n")
    
    starting_string = "wire "
    for i in range(N_STE_BITS-1):
        starting_string = starting_string + f"output_match_STE{i+1},"
    starting_string = starting_string + f"output_match_STE{N_STE_BITS};"
    
    file.write(f"{starting_string} \n")
    file.write(f"wire [{Input_word_BITS_val-1}:0] STE_encoding; \n\n\n")
    
    file.write(f"In{Input_word_BITS}BitTo{Input_word_BITS_val}OneHot uut_1 (\n .input_data(input_number), \n .one_hot_encoding(STE_encoding)  \n ); \n \n ")
    
    for i in range(N_STE_BITS):
        file.write(f"MatchConstant_AUTOMATED #(ActivationVector_STE{i+1}) match_STE{i+1} ( \n .input_number(STE_encoding), \n .output_match(output_match_STE{i+1}) \n ); \n\n\n")
    
    file.write(f"reg [{N_STE_BITS-1}:0] STE_MATCH_VECTOR;\n")    

    file.write("\n  always @(posedge clk) begin \n")
    
    starting_string = "        STE_MATCH_VECTOR <= {"

    for i in range(N_STE_BITS-1):
        starting_string = starting_string + f"output_match_STE{N_STE_BITS-(i)},"
    starting_string = starting_string + f"output_match_STE{1}" + "};"
    file.write(f"{starting_string} \n    end\n")
    file.write(" assign data_out = STE_MATCH_VECTOR; \n\n endmodule\n\n" )
    
    
    file.write(f"module Local_Match_AUTOMATED #( \n    parameter   start_vector =  {zero_STE_BITS}, \n    parameter     end_vector =  {zero_STE_BITS}, \n")
    for i in range(N_STE_BITS-1):
        #str_num = ord(str(char))
        file.write(f"    parameter STE{i+1}_ACTIVATES = {zero_STE_BITS}, \n")
    file.write(     f"    parameter STE{N_STE_BITS}_ACTIVATES = {zero_STE_BITS} \n")

    file.write(f") (\n  input wire clk,                       // Clock input\n  input wire rst,                       //reset signal      \n  input wire  [{N_STE_BITS-1}:0]  local_ste_sw,      // {N_STE_BITS}-bit word input \n  input wire  [{N_STE_BITS-1}:0]  active_ste_sw,     // {N_STE_BITS}-bit word input;\n  output wire [{N_STE_BITS-1}:0]  data_out,          // Match vector output\n  output wire report_bit                // Match vector output\n);\n \n  wire [ {N_STE_BITS-1}:0] AND_sig,result_matrix;")

    starting_string = f"\n wire [ {N_STE_BITS-1}:0]  "
    for i in range(N_STE_BITS-1):
        starting_string = starting_string + f"result_STE{i+1},"
    starting_string = starting_string + f"result_STE{N_STE_BITS}; \n"
    file.write(starting_string)
    file.write(f"\n  reg [ {N_STE_BITS-1}:0]  out_bits; \n \n \n  assign AND_sig =  (local_ste_sw & (active_ste_sw|start_vector));\n")

    for i in range(N_STE_BITS):
        file.write(f"OneBitToFixedBitsRouter_AUTOMATED #(.SELECT_BITS(STE{i+1}_ACTIVATES)) STE{i+1}_ROUTER ( \n    .input_bit(AND_sig[{i}]),\n  .output_w(result_STE{i+1})\n ); \n\n")
                   
    starting_string = "assign  result_matrix = "
    for i in range(N_STE_BITS-1):
        starting_string = starting_string + f"result_STE{i+1}|"
    starting_string = starting_string + f"result_STE{N_STE_BITS}; \n"
    file.write(starting_string)
            
            
    file.write(f"\nalways @(posedge clk) begin\n    if (rst == 1'b1) begin //Not active  \n        out_bits <=  start_vector;\n    end\n    if (AND_sig == {zero_STE_BITS}) begin  \n        out_bits <=  start_vector;     \n    end else begin \n        out_bits <= result_matrix;\n    end\n  end\n  assign data_out =  out_bits;\n  assign report_bit = |(end_vector & AND_sig); \nendmodule\n\n\n")
    file.write("\n\n\n\n")

    #PARAMETERS
    file.write(f"module CA_Processor_{N_STE_BITS}STE_{Input_word_BITS}bitword #(\n    parameter   start_vector =  {zero_STE_BITS}, \n    parameter     end_vector = {zero_STE_BITS} ,\n")
    for i in range(N_STE_BITS-1):
        file.write(f"    parameter ActivationVector_STE{i+1} = {zero_Input_WORD}, \n")
        file.write(f"    parameter        STE{i+1}_ACTIVATES = {zero_STE_BITS}, \n")
    file.write(f"    parameter ActivationVector_STE{N_STE_BITS} = {zero_Input_WORD}, \n")
    file.write(f"    parameter        STE{N_STE_BITS}_ACTIVATES = {zero_STE_BITS} \n")
    
     
    file.write(f")\n(    input wire clk,\n    input wire rst,\n    input wire  [{Input_word_BITS-1}:0] input_word,\n    output wire rpt_bt,\n    output wire [{N_STE_BITS-1}:0] Activated_vector_t0 \n);\n\n   wire [{N_STE_BITS-1}:0] AW_vector_t0;\n")
    file.write(f"\n  STE_MATCH_AUTOMATED_{N_STE_BITS}bit_vector_{Input_word_BITS}bit_word  #(\n")
    #file.write(f"")
    for i in range(N_STE_BITS-1):
        file.write(f"    .ActivationVector_STE{i+1}(ActivationVector_STE{i+1}), \n")
    file.write(f"    .ActivationVector_STE{N_STE_BITS}(ActivationVector_STE{N_STE_BITS}) \n")


    file.write(f"\n ) word_to_STE_sensed (\n .clk(                 clk),             // Clock input\n .input_number( input_word), // 8-bit word input\n .data_out(   AW_vector_t0)        // Match vector output\n);\n \n")


    file.write("Local_Match_AUTOMATED #( \n     .start_vector(start_vector), \n     .end_vector(end_vector), \n")
    for i in range(N_STE_BITS-1):
        file.write(f"     .STE{i+1}_ACTIVATES(STE{i+1}_ACTIVATES), \n")
    file.write(     f"     .STE{N_STE_BITS}_ACTIVATES(STE{N_STE_BITS}_ACTIVATES) \n")

    file.write(f") STE_local_match (\n\n  .clk(clk),                   // Clock input\n  .rst(rst),               //reset signal      \n  .local_ste_sw(AW_vector_t0),                // n-bit STE input\n  .active_ste_sw(Activated_vector_t0),                // n-bit STE input;\n  .data_out(Activated_vector_t0),              // Match vector output\n  .report_bit(rpt_bt)             // Match vector output\n);\n \n endmodule \n")
    
    print("FInished match, now global routing")
# Print a message to confirm that the lines have been written


    file.write(f"/* // Called with parameters, put this into your tb file\n\n\n")
    
    
    file.write(f"CA_Processor_{N_STE_BITS}STE_{Input_word_BITS}bitword #(\n ")
    start_vect_dec = 0   
    end_vect_dec   = 0
    for STE in graph:
        #[1,["a"],[3,8],1,0]
        STE_num = int(STE[0])
        STE_sen = STE[1]
        STE_act = STE[2]
        STE_srt = STE[3]
        STE_end = STE[4]
        
        STE_sense_vector_str    = STE_sense_vector(STE_sen, Input_word_BITS)
        STE_activate_vector_str = STE_activates(   STE_act, N_STE_BITS)
        
        file.write(f"     .ActivationVector_STE{STE_num}({STE_sense_vector_str}), \n"),
        file.write(f"            .STE{STE_num}_ACTIVATES({STE_activate_vector_str}), \n")

        #print(STE_sense_vector_str)
        #print(STE_activate_vector_str)    
        if (STE_srt == 1):
            start_vect_dec |= 2**(int(STE_num)-1)
        if (STE_end == 1):
            end_vect_dec   |= 2**(int(STE_num)-1)

    num_i_start =bin(start_vect_dec) 
    start_vector_str = f"{N_STE_BITS}'b"+"0"*(N_STE_BITS-(len(num_i_start)-2))+num_i_start[2:]
    num_i_end =bin(end_vect_dec) 
    end_vector_str = f"{N_STE_BITS}'b"+"0"*(N_STE_BITS-(len(num_i_end)-2))+num_i_end[2:]
    file.write(f"\n      .start_vector({start_vector_str}), \n      .end_vector(  {end_vector_str}) ) CA_p_v1 ( \n.clk(clk), \n  .rst(rst),\n .input_word(input_word),\n .rpt_bt(rpt_bt),\n .Activated_vector_t0(Activated_vector_t0)\n);\n\n")
    
     
    #print(start_vector_str, end_vector_str)
    
    
    
    file.write(f"*/")



print(f"Lines have been written to '{file_path}'.")
