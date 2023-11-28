# Specify the file paths
input_file_path =  'tb_string_data.txt'
output_file_path= 'tb_string_data_output.txt'

BRAM_size_init = 2**16
i = 0
string_new_text = " "
with open(input_file_path, 'r') as file:
    # Iterate through each line in the file
    for line in file:
        i += 1
        BRAM_size_init += 1
        string_new_text= string_new_text + " " + line
        
#        if len(string_new_text) == BRAM_size_init:
 #           print(f"matches:{i}")
            
        #print(line.strip())  # strip() removes leading and trailing whitespaces, including the newline character
        

text_without_newline = string_new_text.replace("\n", "")
# Open the output file in write mode and save the concatenated content
with open(output_file_path, 'w') as output_file:
    output_file.write(text_without_newline[:(BRAM_size_init+1)])

#print(f"Concatenated content saved to {output_file_path}")
