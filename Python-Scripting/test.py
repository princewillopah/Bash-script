from _1_BasicFile_and_Directory_Operations import ls, pwd, cd, mkdir, rm, cp, mv, touch, file_type, zip_files, unzip_file

print("Current working directory:", pwd())
# print("Current directory contents:", ls())
for file in ls():
    print(file)
