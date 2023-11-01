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
    
    while True:
        # Read data from the serial port
        data = ser.readline().decode('utf-8').strip()
        
        # Print the received data
        print(f"Received data: {data}, with length: {len(data)}")

except serial.SerialException as e:
    print(f"Error: {e}")
finally:
    # Close the serial port
    ser.close()
    print(f"{serial_port} closed.")
