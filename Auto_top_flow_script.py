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
    


def main():
    if len(sys.argv) > 1:
        dir_run = sys.argv[1]
        print(f"Variable received from script_main.py: {dir_run}")
    else:
        print("No directory name received, using default debug")
        dir_run = "debug"

    source_file = 'top_tb.v'
    copy_file_to_directory(source_file, dir_run)
    source_file = 'uart_ex.v'
    copy_file_to_directory(source_file, dir_run)
    source_file = 'top_module.v'
    copy_file_to_directory(source_file, dir_run)
    
    variable_to_pass = dir_run
    subprocess.run(['python', 'Auto_AP_module.py', variable_to_pass])#, variable_to_pass])
    variable_to_pass = dir_run
    subprocess.run(['python', 'Auto_TB_BRAM_generator.py', variable_to_pass])#, variable_to_pass])


    
if __name__ == '__main__':
    main()

