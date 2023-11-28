import serial

# Specify the serial port, baud rate, and other settings
serial_port = 'COM5'
baud_rate = 9600
parity = serial.PARITY_NONE
data_bits = 8
stop_bits = 1

try:
    # Open the serial port
    ser = serial.Serial(port=serial_port, baudrate=baud_rate, parity=parity,
                        stopbits=stop_bits, bytesize=data_bits, timeout=1)

    print(f"Reading from {serial_port}...")
    
    file_path_pam = "uart_log2.txt"
    # Open the file in write mode ('w' mode) and create it if it doesn't exist
    with open(file_path_pam, 'w') as file:
        data_trash   = []
        BRAM_size_init = 2**16 + 1
        # Write each line to the file one by one
    # file.write("//Automated Tb STARTS Here\n")
        count = 0
        while True:
            # Read data from the serial port
            data = ser.readline()#.decode('utf-8').strip()\\
                
            for datum in data:
                data_trash.append(datum)
                if len(data_trash) == 8:
                    
                    clk_byte_1 = data[1]
                    clk_byte_2 = data[3]
                    clk_byte_3 = data[4]
                    word_byte =  data[6]
                    addr_hw   =  data[2]
                    #output =  f"address {count} Cycle Reported {(clk_byte_1 + (clk_byte_2<<8)+ (clk_byte_3<<16))%256} word:{int(word_byte)}\n" #, with length: {len(data)} chr(int(word_byte)) 
                    addres = count#%256
                    Cyc_Rt = (clk_byte_1 + (clk_byte_2<<8)+ (clk_byte_3<<16))
                    word = int(word_byte)
                    output = f"{addres:>9} {Cyc_Rt:>12} {word:>7} \n"
                    #output = f"{addres:>9} {Cyc_Rt:>12} {word:>7} {addr_hw:>6}\n"
                    if Cyc_Rt < BRAM_size_init & Cyc_Rt >last_Cyc_Rt:
                        if word != 0:
                            file.write(output)
                            print(output)
                            count += 1 
                            last_Cyc_Rt = Cyc_Rt
          #  else:     
           #     for datum in data:
            #        data_trash.append(datum)
             #   print(len(data_trash)," ADDED --------------------------------------------------------")
              #  if len(data_trash) == 8:
                    clk_byte_1 = data_trash[1]
                    clk_byte_2 = data_trash[3]
                    clk_byte_3 = data_trash[4]
                    word_byte =  data_trash[6]
                    addr_hw   =  data_trash[2]
                    #output =  f"address {count} Cycle Reported {(clk_byte_1 + (clk_byte_2<<8)+ (clk_byte_3<<16))%256} word:{int(word_byte)}\n" #, with length: {len(data)} chr(int(word_byte)) 
                    addres = count#%256
                    Cyc_Rt = (clk_byte_1 + (clk_byte_2<<8)+ (clk_byte_3<<16))
                    word = int(word_byte)
                    output = f"{addres:>9} {Cyc_Rt:>12} {word:>7} \n"

                    #output = f"{addres:>9} {Cyc_Rt:>12} {word:>7} {addr_hw:>6}\n"
                    file.write(output)
                    print(output," DATA = 8--------------------------------------------------------")
                    count += 1
                    data_trash = []
               # elif len(data_trash) > 8:
                    #data_trash = []
                #    print(len(data_trash),"TRASHED--------------------------------------------------------")
                    data_trash = []
                     
                #print(len(data))
except serial.SerialException as e:
    print(f"Error: {e}")
finally:
    # Close the serial port
    ser.close()
    print(f"{serial_port} closed.")
