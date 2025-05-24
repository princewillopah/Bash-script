import os




##### ------------
dir= os.listdir("/home/princewillopah/DevOps")
print(dir)  # print all files within the directory
for file in dir:
    # print(file)  # print all files within the directory
    print(os.path.join("/home/princewillopah/DevOps", file))  # it will return the full path of the file

# print all files within the directory
# directory = os.listdir("C:/Users/PB/Downloads")
# for file in directory:
#     print(file)


# #### ----  os.path.join()    ---------------
# # os.path.join() is used to join two or more path components intelligently
# # e.g. os.path.join("C:/Users/PB/Downloads", "test.txt")  # it will return C:/Users/PB/Downloads/test.txt

#### ----  os.listdir("C:/Users/PB/Downloads")    ---------------
# directory = os.listdir("C:/Users/PB/Downloads")
# print(directory)  # print all files within the directory

#### ----  os.getcwd()    ---------------
# current_working_dir = os.getcwd()  ## just like pwd in linux. it shows the current working dir
# print(current_working_dir )   # it returns the path of the current working dir. e.g. C:\Users\PB\DevOps\Git-Repos
# print(os.path.split(current_working_dir)) # os.path.split splits the leaf level of the path from the parent path
# print(os.path.basename(current_working_dir)) # os.path.dirname returns the parent path  --   C:\Users\PB\DevOps\
# print(os.path.dirname(current_working_dir)) # os.path.basename returns the leaf name   -- Git-Repos
