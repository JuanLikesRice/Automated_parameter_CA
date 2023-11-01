import json

file_path_graph = "graph_dict.json"
BRAM_size = 256
str_var = "  This text is example data that was stored on BRAM: Hello! This is from the FPGA                  " #" emily is amazing and pretty GF and I think shes so cool and smart and hard working"
with open(file_path_graph, 'r') as json_file:
    loaded_dict = json.load(json_file)
print(f"Dictionary has been loadrd from {file_path_graph} from JSON format.\n This graph imlpements regex: {loaded_dict['reg_exp']} with {loaded_dict['STE_NUM']} encoded STES and {loaded_dict['STE_BITS']} BITS")
print(f"string encoded: {str_var} \n which is {len(str_var)} chars long\n Bram size: {BRAM_size}")

file_path = "tb_str"
file_path_tb_v = file_path + ".txt"
file_path_coe  = file_path + ".coe"
# Open the file in write mode ('w' mode) and create it if it doesn't exist
with open(file_path_tb_v, 'w') as file:
    # Write each line to the file one by one
    file.write("//Automated Tb STARTS Here\n")
    for char in str_var:
        str_num = ord(str(char))
        file.write(f"input_word = 8'd{str_num}; // {char}, hex {str(hex(ord(str(char))))[2:]}\n")
        file.write("#10; \n")
    file.write("//Automated Tb ENDS Here\n")
# Print a message to confirm that the lines have been written
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


#file.write("//Automated Tb ENDS Here\n")
# Print a message to confirm that the lines have been written
#memory_initialization_radix=16;
#memory_initialization_vector=ff;
#print(graph_dict)
#for keys in loaded_dict:
 #   print(keys,loaded_dict[keys])
#print("0-->char: ",chr(0))
#print("char \" \" -->: ",ord(' ')
#str_var = "bArTtBaRtXaTkShCfIwHaTaNaBaCaTaBaRcAhDuCtAdAaCaRcTrCaTrCaTcBaTbRcAtRnBaCaTySnCtAnBaCrNtAbTnArBxTaR"
#str_var = "BARTTBARTXATKSHCFIWHATANABACATABARCAHDUCTADAACARCTRCATRCATCBATBRCATRNBACATYSNCTANBACRNTABTNARBXTAR"

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
#sense("a",loaded_dict,STE_BITS)



        
#sensed    = sense("b",loaded_dict,STE_BITS)
start_vec = start(loaded_dict,STE_BITS)


print("\n\n\n\ninput: bart")
active_states = 0
print(f"CYCLE 0 -------------------")
match_i = match(start_vec,0, sense_number(0,loaded_dict,STE_BITS),loaded_dict,STE_BITS)
i = 1
for char in str_var:
    print(f"CYCLE {i} -------------------")
    i+=1
    match_i = match(start_vec,match_i,sense(char,loaded_dict,STE_BITS),loaded_dict,STE_BITS)


#match_1 = match(start_vec,match_0,sense("b",loaded_dict,STE_BITS),loaded_dict,STE_BITS)
#match_2 = match(start_vec,match_1,sense("a",loaded_dict,STE_BITS),loaded_dict,STE_BITS)
#match_3 = match(start_vec,match_1,sense("r",loaded_dict,STE_BITS),loaded_dict,STE_BITS)
#match_4 = match(start_vec,match_1,sense("t",loaded_dict,STE_BITS),loaded_dict,STE_BITS)


'''
for char in str_var
    str_num = ord(str(char))
    file.write(f"input_word = 8'd{str_num}; // {char}, hex {str(hex(ord(str(char))))[2:]}\n")
    file.write("#10; \n")
file.write("//Automated Tb ENDS Here\n")
'''
