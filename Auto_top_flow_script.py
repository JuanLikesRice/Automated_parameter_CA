import os
import argparse
import subprocess
import shutil
import json
import sys
import json
import subprocess
import math
import ast

def copy_file_to_directory(source_file, destination_directory):
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)
    destination_path = os.path.join(destination_directory, os.path.basename(source_file))
    shutil.copy(source_file, destination_path)
    



def run_command_in_directory(directory, command):
    current_directory = os.getcwd()

    try:
        # Change to the specified directory
        os.chdir(directory)

        # Run the command in the new directory
        subprocess.run(command, shell=True)

    finally:
        # Change back to the original directory
        os.chdir(current_directory)


def main():
    if len(sys.argv) > 1:
        dir_run = sys.argv[1]
        if len(sys.argv) > 2:
            other_var = sys.argv[2]
            print(f"Variable received from script_main.py: {other_var}")
        print(f"Variable received from script_main.py: {dir_run}")
    else:
        print("No directory name received, using default debug")
        dir_run = "debug"

    source_file = 'top_tb.v'
    copy_file_to_directory(source_file, dir_run)
    source_file = 'uart_ex.v'
    copy_file_to_directory(source_file, dir_run)
    
    source_file = 'UART_COMMUNICATION_WITH_FPGA.py'
    copy_file_to_directory(source_file, dir_run)
    #source_file = 'top_module.v'
    #copy_file_to_directory(source_file, dir_run)
    
    variable_to_pass = dir_run
    print("making Module")
    subprocess.run(['python', 'Auto_AP_module.py', variable_to_pass])#, variable_to_pass])
    print("Ran Module")
    print("making BRAM")

    variable_to_pass = dir_run
    subprocess.run(['python', 'Auto_TB_BRAM_generator.py', variable_to_pass])#, variable_to_pass])
    # Example usage:
    folder_path = dir_run
    print("DONE CREATING RTL, NOW CREATING SIM RESULTS")
    command_to_run = 'iverilog -o simulation_results *.v'
    print("Iverilog RUN, NOW CREATING LOG OUTPUTS")

    run_command_in_directory(folder_path, command_to_run)
    folder_path = dir_run
    command_to_run = 'vvp simulation_results >> results_sim.txt'
    run_command_in_directory(folder_path, command_to_run)
    print(f"Log finished, all files written in Directory: {dir_run}")
    
    input_file_path = "regex_str.txt"

    with open(input_file_path, 'r') as file:
    # Iterate through each line in the file
        for line in file:
            reg_exp = line
    command =  f"head -c 65536 tb_string_data_output.txt  | java -jar C:\juwan_projects\JSON_MAKER\exe.jar --match --partial \"{reg_exp}\" >> {dir_run}/results_json.txt"
    print(f'\n\n\n\nRuning JSON command {command}')
    subprocess.run(command, shell=True)
if __name__ == '__main__':
    main()



