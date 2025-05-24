import os

## --------------------------------------------------------
## pwd --> os.getcwd()
## --------------------------------------------------------
## dir = /home/princewillopah/DevOps/Bash-script/Python-Scripting
# print(os.getcwd())   # it returns the path of the current working dir. --  e.g./home/princewillopah/DevOps/Bash-script/Python-Scripting
# print(os.path.split(os.getcwd())) # os.path.split splits the leaf level of the path from the parent path --  ('/home/princewillopah/DevOps/Bash-script', 'Python-Scripting')
# print(os.path.basename(os.getcwd())) # os.path.dirname returns the parent path  --   Python-Scripting
# print(os.path.dirname(os.getcwd())) # os.path.basename returns the leaf name   -- /home/princewillopah/DevOps/Bash-script
# print(os.path.join(os.getcwd(), "test.txt"))  # it will return /home/princewillopah/DevOps/Bash-script/Python-Scripting/test.txt


## --------------------------------------------------------
## ls -l --> os.listdir()
## --------------------------------------------------------
# print(os.listdir())  # print all files within the directory
# print(os.listdir("/home/princewillopah/DevOps"))  # print all files within the directory
# print(os.listdir("/home/princewillopah/DevOps/Bash-script/Python-Scripting"))  # print all files within the directory


# for x in os.listdir():
#     print(x)  # print all files within the directory
    # print(os.path.join(os.getcwd(), x))  # it will return the full path of the file
    # print(os.path.join("/home/princewillopah/DevOps", x))  # it will return the full path of the file
# print(os.path.join("/home/princewillopah/DevOps", "test.txt"))  # it will return /home/princewillopah/DevOps/test.txt
# print(os.path.join("/home/princewillopah/DevOps/Bash-script/Python-Scripting", "test.txt"))  # it will return /home/princewillopah/DevOps/Bash-script/Python-Scripting/test.txt
# print(os.path.join("/home/princewillopah/DevOps/Bash-script/Python-Scripting", "test.txt"))  # it will return /home/princewillopah/DevOps/Bash-script/Python-Scripting/test.txt
# print(os.path.join("/home/princewillopah/DevOps/Bash-script/Python-Scripting", "test.txt"))  # it will return /home/princewillopah/DevOps/Bash-script/Python-Scripting/test.txt

## ## --------------------------------------------------------
## ls -l --> os.listdir()
## -----------------------------------------------------------
# print(os.listdir())  # print all files within the directory