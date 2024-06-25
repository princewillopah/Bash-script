import os
import shutil
import subprocess

# Lists a directory’s content
def ls(path='.'):
    return os.listdir(path)

# Shows the current working directory’s path
def pwd():
    return os.getcwd()

# Changes the working directory
def cd(path):
    os.chdir(path)

# Creates a new directory
def mkdir(path):
    os.makedirs(path, exist_ok=True)

# Deletes a file
def rm(path):
    os.remove(path)

# Copies files and directories, including their content
def cp(src, dst):
    if os.path.isdir(src):
        shutil.copytree(src, dst)
    else:
        shutil.copy2(src, dst)

# Moves or renames files and directories
def mv(src, dst):
    shutil.move(src, dst)

# Creates a new empty file
def touch(path):
    open(path, 'a').close()

# Checks a file’s type
def file_type(path):
    return subprocess.run(['file', path], capture_output=True, text=True).stdout

# Creates and extracts a ZIP archive
import zipfile

def zip_files(zip_name, files):
    with zipfile.ZipFile(zip_name, 'w') as zipf:
        for file in files:
            zipf.write(file)

def unzip_file(zip_name, extract_to='.'):
    with zipfile.ZipFile(zip_name, 'r') as zipf:
        zipf.extractall(extract_to)

# Archives files without compression in a TAR format
import tarfile

def create_tar(tar_name, files):
    with tarfile.open(tar_name, 'w') as tar:
        for file in files:
            tar.add(file)

def extract_tar(tar_name, extract_to='.'):
    with tarfile.open(tar_name, 'r') as tar:
        tar.extractall(extract_to)
