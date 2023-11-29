from Auto_top_flow_script import *

if len(sys.argv) > 1:
    variable_received = sys.argv[1]
    print(f"Variable received from script_main.py: {variable_received}")
else:
    print("No variable received.")
    variable_received = None

dir_str_raw = str(variable_received)
directory_string  = str(variable_received)  +  "\\"
print(directory_string)
file_path_graph = directory_string + "graph_dict.json"
BRAM_size = 2**16


string_tb_char = "tb_string_data_output.txt"

copy_file_to_directory(string_tb_char, dir_str_raw)

with open(string_tb_char, 'r') as file:
    str_var = file.read()[:BRAM_size]

with open(file_path_graph, 'r') as json_file:
    loaded_dict = json.load(json_file)

print(f"Dictionary has been loadrd from {file_path_graph} from JSON format.\n This graph imlpements regex: {loaded_dict['reg_exp']} with {loaded_dict['STE_NUM']} encoded STES and {loaded_dict['STE_BITS']} BITS")
#print(f"string encoded: {str_var} \n which is {len(str_var)} chars long\n Bram size: {BRAM_size}")
print(f"string encoded is {len(str_var)} chars long\n Bram size: {BRAM_size}")

file_path = "tb_str"
file_path_tb_v = directory_string + file_path + ".txt"
file_path_coe  = directory_string + file_path + ".coe"
file_path_coe_9 = directory_string +file_path + "_9bit.coe"
file_path_BRAM_RTL = directory_string + file_path + "BRAM_RTL_AUTO.v"

file_path_pam = directory_string + file_path + f"_BRAM_PAR_{str(BRAM_size)}.txt"
# Open the file in write mode ('w' mode) and create it if it doesn't exist
with open(file_path_tb_v, 'w') as file:
    # Write each line to the file one by one
    file.write("//Automated Tb STARTS Here\n")
    for char in str_var:
        str_num = ord(str(char))
        file.write(f"input_word = 8'd{str_num}; // {char}, hex {str(hex(ord(str(char))))[2:]}\n")
        file.write("#10; \n")
    file.write("//Automated Tb ENDS Here\n")
print(f"Lines have been written to '{file_path_tb_v}'.")

with open(file_path_coe, 'w') as file:
    # Write each line to the file one by one#file.write("//Automated Tb STARTS Here\n")
    file.write("memory_initialization_radix=16;\n")
    file.write("memory_initialization_vector=  \n")
    num_print = 0
    break_flag = 1 
    file_len  = len(str_var)
    rangg_num = file_len-1
        
    for char_i in range(rangg_num):
        if  char_i != (BRAM_size-1):
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"{str_num},\n")
            num_print +=1 
        else: 
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"{str_num};")
            break_flag = 0 
            break
    if break_flag == 1:        
        if file_len == BRAM_size:
            str_num = str(hex(ord(str(str_var[rangg_num]))))[2:]
            file.write(f"{str_num};")
            num_print +=1 
        else:
            str_num = str(hex(ord(str(str_var[rangg_num]))))[2:]
            file.write(f"{str_num},\n")
            num_print +=1 
            for i in range(BRAM_size- file_len-1):
                file.write(f"00,\n")
                num_print +=1 
            file.write(f"00;")
            num_print +=1     

print(f"Lines have been written to '{file_path_coe}' with {num_print} lines of data into the bram .")


with open(file_path_coe_9, 'w') as file:
    file.write("memory_initialization_radix=16;\n")
    file.write("memory_initialization_vector=  \n")
    num_print = 0
    break_flag = 1 
    file_len  = len(str_var)
    rangg_num = file_len-1
        
    for char_i in range(rangg_num):
        if  char_i == 0: #(BRAM_size-1):
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"1{str_num},\n")
            num_print +=1 
        elif  char_i != (BRAM_size-1):
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"0{str_num},\n")
            num_print +=1 
        else: 
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"0{str_num};")
            break_flag = 0 
            break
    if break_flag == 1:        
        if file_len == BRAM_size:
            str_num = str(hex(ord(str(str_var[rangg_num]))))[2:]
            file.write(f"0{str_num};")
            num_print +=1 
        else:
            str_num = str(hex(ord(str(str_var[rangg_num]))))[2:]
            file.write(f"0{str_num},\n")
            num_print +=1 
            for i in range(BRAM_size- file_len-1):
                file.write(f"000,\n")
                num_print +=1 
            file.write(f"000;")
            num_print +=1     

print(f"Lines have been written to '{file_path_coe}' with {num_print} lines of data into the bram .")




with open(file_path_pam, 'w') as file:
    num_print = 0
    break_flag = 1 
    file_len  = len(str_var)
    rangg_num = file_len-1
    for char_i in range(BRAM_size):
        if  char_i == 0 and len(str_var) > 0:
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"    memory[{char_i}] <=  8'h{str_num};    ")
            num_print +=1 
        elif char_i < len(str_var):
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"    memory[{char_i}] <=  8'h{str_num};    ")
            num_print +=1 
        else:
            file.write(f"    memory[{char_i}] <=  8'h00;    ")
print(f"Lines have been written to '{file_path_pam}' with {num_print} lines of data into the bram .")

BRAM_BITS = 16
BRAM_ENTRY = 8

with open(file_path_BRAM_RTL, 'w') as file:
    num_print = 0
    break_flag = 1 
    file_len  = len(str_var)
    rangg_num = file_len-1
    
    file.write("module BRAM_AUTO (\n    input wire clk,           // Clock signal \n")
    file.write(f"    input wire [{BRAM_BITS-1}:0] addr,    // Address input (8 bits)\n     input wire we,            // Write enable signal\n")
    file.write(f"    input wire [{BRAM_ENTRY-1}:0] write_data, // Data input ({BRAM_ENTRY} bits)\n")
    file.write("    input wire enable,        // Enable signal for read and write operations\n")
    file.write(f"    output reg [{BRAM_ENTRY-1}:0] read_data // Data output (9 bits)\n);\n")
    file.write(f"  reg [{BRAM_ENTRY-1}:0] memory [0:{BRAM_size-1}]; // {BRAM_size}x{BRAM_ENTRY}-bit Block RAM\n\n")
    file.write(f"    reg [{BRAM_ENTRY-1}:0] read_data_buff1, read_data_buff2, reg_last_written_data, reg_last_written_addr;\n")
    file.write(f"    initial begin\nreg_last_written_data <= {BRAM_ENTRY}'b0;\nreg_last_written_addr <= {BRAM_ENTRY}'b0;\n")
    file.write(f"read_data_buff1 <= {BRAM_ENTRY}'h00;\nread_data_buff2 <= {BRAM_ENTRY}'h00;\nread_data <=   {BRAM_ENTRY}'h00;\n")
    file.write("\n")
    file.write("\n")
    
    for char_i in range(BRAM_size):
        if  char_i == 0 and len(str_var) > 0:
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"    memory[{char_i}] <=  8'h{str_num};    ")
            num_print +=1 
        elif char_i < len(str_var):
            str_num = str(hex(ord(str(str_var[char_i]))))[2:]
            file.write(f"    memory[{char_i}] <=  8'h{str_num};    ")
            num_print +=1 
        else:
            file.write(f"    memory[{char_i}] <=  8'h00;    ")
            
            
    file.write("\n")   
            

    file.write("    end\n\n    always @(posedge clk) begin\n        if (enable) begin\n            if (we) begin\n                memory[addr] <= write_data; // Write operation when we and enable are high\n                reg_last_written_data <= write_data;\n                reg_last_written_addr <= addr;\n            end")
    file.write("\n        read_data_buff2  <= memory[addr]; // Read operation when enable is high\n            read_data_buff1  <= read_data_buff2; // Read operation when enable is high\n            read_data <= read_data_buff1; // Read operation when enable is high\n\n        end\n    end\n \nendmodule\n")
    file.write("\n\n\n\n\n")
    num_print = 0
    break_flag = 1 
    file_len  = len(str_var)
    rangg_num = file_len-1
    
    file.write("module BRAM_empty_AUTO (\n    input wire clk,           // Clock signal \n")
    file.write(f"    input wire [{BRAM_BITS-1}:0] addr,    // Address input (8 bits)\n    input wire we,            // Write enable signal\n")
    file.write(f"    input wire [{BRAM_ENTRY-1}:0] write_data, // Data input ({BRAM_ENTRY} bits)\n")
    file.write("    input wire enable,        // Enable signal for read and write operations\n")
    file.write(f"    output reg [{BRAM_ENTRY-1}:0] read_data // Data output (9 bits)\n);\n")
    file.write(f"  reg [{BRAM_ENTRY-1}:0] memory [0:{BRAM_size-1}]; // {BRAM_size}x{BRAM_ENTRY}-bit Block RAM\n\n")
    file.write(f"    reg [{BRAM_ENTRY-1}:0] read_data_buff1, read_data_buff2, reg_last_written_data, reg_last_written_addr;\n")
    file.write(f"    initial begin\nreg_last_written_data <= {BRAM_ENTRY}'b0;\nreg_last_written_addr <= {BRAM_ENTRY}'b0;\n")
    file.write(f"read_data_buff1 <= {BRAM_ENTRY}'h00;\nread_data_buff2 <= {BRAM_ENTRY}'h00;\nread_data <=   {BRAM_ENTRY}'h00;\n")
    file.write("\n")
    file.write("\n")
    
    for char_i in range(BRAM_size):
        file.write(f"    memory[{char_i}] <=  8'h00;  ")
            
    file.write("\n")   
            

    file.write("    end\n\n    always @(posedge clk) begin\n        if (enable) begin\n            if (we) begin\n                memory[addr] <= write_data; // Write operation when we and enable are high\n                reg_last_written_data <= write_data;\n                reg_last_written_addr <= addr;\n            end")
    file.write("\n        read_data_buff2  <= memory[addr]; // Read operation when enable is high\n            read_data_buff1  <= read_data_buff2; // Read operation when enable is high\n            read_data <= read_data_buff1; // Read operation when enable is high\n\n        end\n    end\n \nendmodule\n")
    
    
    
    
print(f"Lines have been written to '{file_path_pam}' with {num_print} lines of data into the bram .")



STE_BITS = loaded_dict['STE_BITS']
current = "0"*STE_BITS

def start(graph,STE_BITS):
    current = 0     #2STE_BITS
    for i in range(1,STE_BITS+1):
        str_i = str(i)
        if str_i in graph:
            if "init" in graph[str_i]:
                #print(i,graph[str_i]["init"])
                if graph[str_i]["init"]: 
                    current |= 2**(i-1)    
                    #print(i,1)
                else:
                    pass#print(i,0)
        else:
            pass#print(i,0)

    str_vect = str(bin(current))[2:]
    final_str_vect = (STE_BITS -  len(str_vect))*"0" + str_vect
    #print(str_vect, len(str_vect))
    #print(final_str_vect)
    #print("0"*STE_BITS)
    print("start:")
    print(final_str_vect, hex(current), current)
   
    return current 

def sense(word,graph,STE_BITS):
    current = 0     #2STE_BITS
    word_num = ord(str(word))
    print(f"word: {word}, {word_num} ACII")
    for i in range(1,STE_BITS+1):
        str_i = str(i)
        if str_i in graph:
            if "cc" in graph[str_i]:
                #print(i,graph[str_i]["cc"])
                if word_num in graph[str_i]["cc"]: 
                    current |= 2**(i-1)    
                    #print(i,1)
                else:
                    pass#print(i,0)
        else:
            pass#print(i,0)
        
    str_vect = str(bin(current))[2:]
    final_str_vect = (STE_BITS -  len(str_vect))*"0" + str_vect
    print("sensed:")
    print(final_str_vect, hex(current), current)
    #print(str_vect, len(str_vect))
    #print(final_str_vect)
    #print("0"*STE_BITS)
    return current 
#sense("a",loaded_dict,STE_BITS)


def match(start,active_states,sensed,graph,STE_BITS):
    #decimal_number = int(binary_sense, 2)
    
    AND_number  = (active_states | start) & sensed
    current = 0     #2STE_BIT    
    for i in range(1,STE_BITS+1):
        str_i = str(i)
        high = 2**(i-1)
        if high == high & AND_number:
            if str_i in graph:
                if "to" in graph[str_i]:
                    #print(graph[str_i]["to"])
                    for STE_i_to in graph[str_i]["to"]:
                        
                         current |= 2**(STE_i_to-1)    
    str_vect = str(bin(current))[2:]
    final_str_vect = (STE_BITS -  len(str_vect))*"0" + str_vect
    #print(str_vect, len(str_vect))
    print("Match:")
    print(final_str_vect, hex(current), current, "                   <--")
    #print("0"*STE_BITS)
    return current


def sense_number(number,graph,STE_BITS):
    current = 0     #2STE_BITS
    word_num = number
    print(f"word: {chr(number)}, {word_num} ACII")
    for i in range(1,STE_BITS+1):
        str_i = str(i)
        if str_i in graph:
            if "cc" in graph[str_i]:
                #print(i,graph[str_i]["cc"])
                if word_num in graph[str_i]["cc"]: 
                    current |= 2**(i-1)    
                    #print(i,1)
                else:
                    pass#print(i,0)
        else:
            pass#print(i,0)
        
    str_vect = str(bin(current))[2:]
    final_str_vect = (STE_BITS -  len(str_vect))*"0" + str_vect
    print("sensed:")
    print(final_str_vect, hex(current), current)
    #print(str_vect, len(str_vect))
    #print(final_str_vect)
    #print("0"*STE_BITS)
    return current    
start_vec = start(loaded_dict,STE_BITS)
print("\n\n\n\ninput: bart")
active_states = 0
print(f"CYCLE 0 -------------------")
match_i = match(start_vec,0, sense_number(0,loaded_dict,STE_BITS),loaded_dict,STE_BITS)
i = 1
print(len(str_var))


