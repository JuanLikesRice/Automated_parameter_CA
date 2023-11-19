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
    
    file_path_pam = "uart_log.txt"
    # Open the file in write mode ('w' mode) and create it if it doesn't exist
    with open(file_path_pam, 'w') as file:
        # Write each line to the file one by one
    # file.write("//Automated Tb STARTS Here\n")
        while True:
            # Read data from the serial port
            data = ser.readline()#.decode('utf-8').strip()
            if len(data) == 8:
                clk_byte_1 = data[1]
                clk_byte_2 = data[3]
                clk_byte_3 = data[4]
                word_byte =  data[6]
                str =  f"Cycle Reported {clk_byte_1 + (clk_byte_2<<8)+ (clk_byte_3<<16)} word:{chr(int(word_byte))}, with length: {len(data)} \n"

                file.write(str)
                print(str)
except serial.SerialException as e:
    print(f"Error: {e}")
finally:
    # Close the serial port
    ser.close()
    print(f"{serial_port} closed.")
