print()
print()
print()

import os
import subprocess
import datetime
import shutil
# import requests

current_working_dir = os.getcwd()
# print(f"Current Working Directory: '{current_working_dir}'") # os.getcwd() = pwd = get the current working Directory
# print(f"Spliting The Leaf Path/Parent Path: '{os.path.split(current_working_dir)}'") # os.path.split splits the leaf level of the path from the parent path
# print(f"The Parent Path: '{os.path.basename(current_working_dir)}'") # os.path.dirname returns the parent path.
# print(f"The Leaf Name: '{os.path.dirname(current_working_dir)}'") # os.path.basename returns the leaf name

# # You can easily use os.path.dirname to walk up a directory tree:
# while os.path.basename(current_working_dir):
#      current_working_dir = os.path.dirname(current_working_dir)
#      print(current_working_dir)



### =================================================================================
### list all file/folders in the curren dir
### =================================================================================
# List files in directory
# files = os.listdir(current_working_dir)
# # print(f"Files in directory: {files}")
# for file in files:
#     print(file)

### =================================================================================
### Create Files in folder
### =================================================================================
# path = 'C:/Users/PB/Downloads/'
# def mkdir(path):
#     os.makedirs(path, exist_ok=True)

# list = ['pdfs', 'Pem-files','zips','RDP','Jpeg','MP4','Others']
# for file in list:
#    mkdir(path+file)
#    print(f"{path+file} Created")

### =================================================================================
### Get the new files with .ir from download directory and delete them
### =================================================================================
def mv(src, dst):
    shutil.move(src, dst)

directory = "C:/Users/PB/Downloads/"
# threshold_date = datetime.datetime(2024,8,3)


for filename in os.listdir(directory):
    if filename.endswith('.pdf'):
       mv(directory+filename,"C:/Users/PB/Downloads/pdfs")
       print(f"'{filename}' moved to {directory}/pdfs")
    elif filename.endswith('.pem'):
       mv(directory+filename,"C:/Users/PB/Downloads/Pem-files")
       print(f"'{filename}' moved to {directory}Pem-files")
    elif filename.endswith('.zip'):
       mv(directory+filename,"C:/Users/PB/Downloads/zips")
       print(f"'{filename}' moved to {directory}zips")
    elif filename.endswith('.rdp'):
       mv(directory+filename,"C:/Users/PB/Downloads/RDP")
       print(f"'{filename}' moved to {directory}RDP")
    elif filename.endswith('.jpeg'):
       mv(directory+filename,"C:/Users/PB/Downloads/Jpeg")
       print(f"'{filename}' moved to {directory}Jpeg")
    elif filename.endswith('.mp4'):
       mv(directory+filename,"C:/Users/PB/Downloads/MP4")
       print(f"'{filename}' moved to {directory}MP4")
    elif filename.endswith('.*'):
       mv(directory+filename,"C:/Users/PB/Downloads/Others")
       print(f"'{filename}' moved to {directory}Others")










# import os

# def create_directory(directory_path):
#   """Creates a new directory if it doesn't exist.

#   Args:
#     directory_path: The path of the directory to create.
#   """

#   try:
#     os.makedirs(directory_path, exist_ok=True)
#     print(f"Directory '{directory_path}' created successfully.")
#   except OSError as error:
#     print(f"Error creating directory: {error}")

# # Example usage:
# directory_name = "new_directory"
# create_directory(directory_name)









# # //------------------------------------------------------------------------------
# # Run a shell command
# result = subprocess.run(["echo", "Hello from subprocess"], capture_output=True, text=True)
# print(result.stdout)

# # //------------------------------------------------------------------------------
# def check_server_status(url):
#     try:
#         response = requests.get(url)
#         if response.status_code == 200:
#             print(f"The server at {url} is up and running.")
#         else:
#             print(f"The server at {url} returned status code {response.status_code}.")
#     except requests.exceptions.RequestException as e:
#         print(f"Failed to connect to {url}: {e}")

# # Check the status of example.com
# check_server_status("https://google.com")

# # ----------------------------------------------------------------------------











































































































































print()
print()
print()
