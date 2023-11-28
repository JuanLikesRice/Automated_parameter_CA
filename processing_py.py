BRAM_size = 2**16
#str_var = "  This text is example data that was stored on BRAM: Hello! This is from the FPGA                  " #" emily is amazing and pretty GF and I think shes so cool and smart and hard working"


string_tb_char = 'tb_string_data_output.txt'
with open(string_tb_char, 'r') as file:
    str_var = file.read()[:BRAM_size]

i = 65533
print( str_var[i-100:i])
print(str_var[0:20])


chr_v =  str_var[6]
print(f"char {chr_v}, {ord(chr_v)}")


chr_v =  "r"
print(f"char {chr_v}, {ord(chr_v)}")
chr_v =  "t"
print(f"char {chr_v}, {ord(chr_v)}")
chr_v =  "r"
print(f"char {chr_v}, {ord(chr_v)}")
chr_v =  "l"
print(f"char {chr_v}, {ord(chr_v)}")

print( str_var[5:11])
print( str_var[6])
print( str_var[9])
print( str_var[11])
print( str_var[40])

#print( ord(str_var[i]))
