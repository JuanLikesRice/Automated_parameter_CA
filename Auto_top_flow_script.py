import os
import argparse
import subprocess
import shutil
import json
import sys

def copy_file_to_directory(source_file, destination_directory):
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)
    destination_path = os.path.join(destination_directory, os.path.basename(source_file))
    shutil.copy(source_file, destination_path)
    
def copy_file(source_directory, destination_directory, file_name):
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)
    source_path = os.path.join(source_directory, file_name)
    destination_path = os.path.join(destination_directory, file_name)
    shutil.copy(source_path, destination_path)

def add_file_to_directory(file_path, directory_path):
    if not os.path.exists(directory_path):
        os.makedirs(directory_path)
    full_file_path = os.path.join(directory_path, os.path.basename(file_path))
    with open(full_file_path, 'w') as file:
        file.write('Hello, World!_anew')

def main():
    
    destination_directory = 'example_directory'
    parser = argparse.ArgumentParser(description='Add a file to a directory, creating the directory if it does not exist.')
    #parser.add_argument('file_path', type=str, help='Path to the file to be added')
    parser.add_argument('directory_path', type=str, help='Path to the directory where the file should be added')
    args = parser.parse_args()
    #file_path = 'example.txt'
    #print(file_path, args.directory_path)
    #add_file_to_directory(file_path, args.directory_path)
    source_file = 'top_tb.v'
    copy_file_to_directory(source_file, args.directory_path)
    source_file = 'uart_ex.v'
    copy_file_to_directory(source_file, args.directory_path)
    source_file = 'top_module.v'
    copy_file_to_directory(source_file, args.directory_path)
    variable_to_pass = args.directory_path
    subprocess.run(['python', 'Auto_AP_module.py', variable_to_pass])#, variable_to_pass])
    variable_to_pass = args.directory_path
    subprocess.run(['python', 'Auto_TB_BRAM_generator.py', variable_to_pass])#, variable_to_pass])


    
if __name__ == '__main__':
    main()

