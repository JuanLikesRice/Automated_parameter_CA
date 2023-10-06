print("0-->char: ",chr(0))
print("char \" \" -->: ",ord(' '))


# Specify the file path (change this to your desired file path)
file_path = "tb_str.txt"
#str_var = "barttbartxatkshcfiwhatanabacatabarcahductadaacarctrcatrcatcbatbrcatrnbacatysnctanbacrntabtnarbxtar"
str_var = "bArTtBaRtXaTkShCfIwHaTaNaBaCaTaBaRcAhDuCtAdAaCaRcTrCaTrCaTcBaTbRcAtRnBaCaTySnCtAnBaCrNtAbTnArBxTaR"
#str_var = "BARTTBARTXATKSHCFIWHATANABACATABARCAHDUCTADAACARCTRCATRCATCBATBRCATRNBACATYSNCTANBACRNTABTNARBXTAR"



# Open the file in write mode ('w' mode) and create it if it doesn't exist
with open(file_path, 'w') as file:
    # Write each line to the file one by one
    file.write("//Automated Tb STARTS Here\n")

    for char in str_var:
        str_num = ord(str(char))
        file.write(f"input_word = 8'd{str_num}; // {char}\n")
        file.write("#10; \n")
    file.write("//Automated Tb ENDS Here\n")

# Print a message to confirm that the lines have been written
print(f"Lines have been written to '{file_path}'.")






