print()
print()
print()

import os
import subprocess
import requests

current_working_dir = os.getcwd()

# print(f"Current Working Directory: '{current_working_dir}'") # os.getcwd() = pwd = get the current working Directory
# print(f"Spliting The Leaf Path/Parent Path: '{os.path.split(current_working_dir)}'") # os.path.split splits the leaf level of the path from the parent path
# print(f"The Parent Path: '{os.path.basename(current_working_dir)}'") # os.path.dirname returns the parent path.
# print(f"The Leaf Name: '{os.path.dirname(current_working_dir)}'") # os.path.basename returns the leaf name

# # You can easily use os.path.dirname to walk up a directory tree:
# while os.path.basename(current_working_dir):
#      current_working_dir = os.path.dirname(current_working_dir)
#      print(current_working_dir)



# //------------------------------------------------------------------------------
# List files in directory
files = os.listdir(current_working_dir)
print(f"Files in directory: {files}")


# //------------------------------------------------------------------------------
# Run a shell command
result = subprocess.run(["echo", "Hello from subprocess"], capture_output=True, text=True)
print(result.stdout)

# //------------------------------------------------------------------------------
def check_server_status(url):
    try:
        response = requests.get(url)
        if response.status_code == 200:
            print(f"The server at {url} is up and running.")
        else:
            print(f"The server at {url} returned status code {response.status_code}.")
    except requests.exceptions.RequestException as e:
        print(f"Failed to connect to {url}: {e}")

# Check the status of example.com
check_server_status("https://google.com")

# ----------------------------------------------------------------------------











































































































































print()
print()
print()
