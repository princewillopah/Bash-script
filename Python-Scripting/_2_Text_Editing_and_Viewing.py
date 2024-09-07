import os
import shutil
import subprocess



# Edits a file with a text editor (Example: nano)
def edit_file_with_nano(path):
    subprocess.run(['nano', path])

# Lists, combines, and writes a file’s content as a standard output
def cat(path):
    with open(path, 'r') as file:
        return file.read()

# Searches a string within a file
def grep(pattern, path):
    return subprocess.run(['grep', pattern, path], capture_output=True, text=True).stdout

# Finds, replaces, or deletes patterns in a file
def sed_find_replace(find, replace, path):
    subprocess.run(['sed', '-i', f's/{find}/{replace}/g', path])

# Displays a file’s first ten lines
def head(path, lines=10):
    with open(path, 'r') as file:
        return ''.join(file.readlines()[:lines])

# Prints a file’s last ten lines
def tail(path, lines=10):
    with open(path, 'r') as file:
        return ''.join(file.readlines()[-lines:])

# Finds and manipulates patterns in a file
def awk(pattern, path):
    return subprocess.run(['awk', pattern, path], capture_output=True, text=True).stdout

# Reorders a file’s content
def sort_file(path):
    with open(path, 'r') as file:
        return ''.join(sorted(file.readlines()))

# Sections and prints lines from a file
def cut_file(path, delimiter, field):
    return subprocess.run(['cut', '-d', delimiter, '-f', str(field), path], capture_output=True, text=True).stdout

# Compares two files’ content and their differences
def diff_files(file1, file2):
    return subprocess.run(['diff', file1, file2], capture_output=True, text=True).stdout

# Prints command outputs in Terminal and a file
def tee_command(command, file_path):
    result = subprocess.run(command, capture_output=True, text=True)
    with open(file_path, 'w') as file:
        file.write(result.stdout)
    return result.stdout
