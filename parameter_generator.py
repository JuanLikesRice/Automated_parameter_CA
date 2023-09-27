import sys
# Check if at least one argument is provided (the script name counts as an argument)
if len(sys.argv) < 2:
    print("Usage: python file.py <var>")
    sys.exit(1)

# Access the variable 'var' passed as an argument (it will be a string)
var = int(sys.argv[1])

# Now you can use 'var' in your script
print("The value of 'var' is:", var)

'''num_i =hex((2**(var)))+hex((2**93)) 
print(len("0"*(64-(len(num_i)-2))))
print(len(num_i)-2)
print("256'h"+"0"*(64-(len(num_i)-2))+num_i[2:])
'''


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
    #print(len("0"*(64-(len(num_i)-2))))
    #print(len(num_i)-2)
    #print("256'h"+"0"*(64-(len(num_i)-2))+num_i[2:])
    ste_vect_string =f"{Input_word_BITS_val}'h"+"0"*(Input_word_BITS_val_hex-(len(num_i)-2))+num_i[2:]
    return ste_vect_string


def STE_activates(list,N_STE_BITS):
    STE_fanout = 0#bin("0"*int(N_STE_BITS))
    
    num_i_bit = 0
    for i in range(len(list)):
       # index_var = int(N_STE_BITS)-(int(list[i]))
        STE_fanout |= 2**(int(list[i]-1))
        
    num_i =bin(STE_fanout) 
    #print(len("0"*(64-(len(num_i)-2))))
    #print(len(num_i)-2)
    #print("N_STE_BITS'b"+"0"*(N_STE_BITS-(len(num_i)-2))+num_i[2:])
    ste_vect_string = f"{N_STE_BITS}'b"+"0"*(N_STE_BITS-(len(num_i)-2))+num_i[2:]
    return ste_vect_string

print(STE_sense_vector(["t"],8))
print(STE_activates([],8))

for STE in graph:
    #[1,["a"],[3,8],1,0]
    STE_num = STE[0]
    STE_sen = STE[1]
    STE_act = STE[2]
    STE_srt = STE[3]
    STE_end = STE[4]

'''
num_i =hex((2**232)+(2**0)) 
print(len(num_i)-2)
print("0"*(64-(len(num_i)-2)) + num_i[2:])

num_i =hex((2**252)+(2**0)) 
print(len(num_i)-2)
print("0"*(64-(len(num_i)-2)) + num_i[2:])

num_i =hex((2**251)+(2**0)) 
print(len(num_i)-2)
print("0"*(64-(len(num_i)-2)) + num_i[2:])
print(len("0"*(64-(len(num_i)-2)) + num_i[2:]))
'''