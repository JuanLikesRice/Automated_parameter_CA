print("0-->char: ",chr(0))
print("char \" \" -->: ",ord(' '))


# Specify the file path (change this to your desired file path)
#str_var = "barttbartxatkshcfiwhatanabacatabarcahductadaacarctrcatrcatcbatbrcatrnbacatysnctanbacrntabtnarbxtar"
str_var = "bArTtBaRtXaTkShCfIwHaTaNaBaCaTaBaRcAhDuCtAdAaCaRcTrCaTrCaTcBaTbRcAtRnBaCaTySnCtAnBaCrNtAbTnArBxTaR"
#str_var = "BARTTBARTXATKSHCFIWHATANABACATABARCAHDUCTADAACARCTRCATRCATCBATBRCATRNBACATYSNCTANBACRNTABTNARBXTAR"

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
    # Write each line to the file one by one
    #file.write("//Automated Tb STARTS Here\n")
    file.write("memory_initialization_radix=16;\n")
    file.write("memory_initialization_vector=  \n")
    
    rangg_num = len(str_var)-1
    for char_i in range(rangg_num):
        str_num = str(hex(ord(str(str_var[char_i]))))[2:]
        file.write(f"{str_num},\n")
    str_num = str(hex(ord(str(str_var[rangg_num]))))[2:]
    file.write(f"{str_num};\n")
    #file.write("//Automated Tb ENDS Here\n")
# Print a message to confirm that the lines have been written
print(f"Lines have been written to '{file_path_coe}'.")
#memory_initialization_radix=16;
#memory_initialization_vector=ff;