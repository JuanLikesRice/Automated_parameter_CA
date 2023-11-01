def STE_to(hex_string,Input_word_BITS):
    decimal_number = int(hex_string, 16)
    #print(decimal_number)
    listy = []
    for i in range((2**Input_word_BITS)):
        high = 2**(i)
        if high == high & decimal_number :
            listy.append(i)
    return listy
    
num1 = "0000000000000000000000000000000000000004000000000000000000000000"
num2 = "0000000000000000000000000000000000000002000000000000000000000000"
num3 = "0000000000000000000000000000000000100000000000000000000000000000"

num4 = "0000000000000000000000000000000000100006000000000000000000000000"
print(STE_to(num4,8))