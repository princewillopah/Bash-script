#! /bin/bash

current_dir=$(pwd)   # note that $(pwd) is the same as ${PWD}

echo "Hello  ${USER^}" # making the first character uppercase
echo "I will now back up your home directory, $HOME"
echo "I noticed that you are running the script in $current_dir"
echo "I said i will backup the files in $current_dir" 
# tar -cf $current_dir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME/* 2>/dev/null
tar -cf $current_dir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ./* 2>/dev/null  # in the current dir, tar everythin there shown by ./*
echo "Backup Completed Sucessfully"


# tar: The command for creating and manipulating tar archives.
# -cf: Options for tar. -c stands for create, and -f specifies the filename of the archive.
# $current_dir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar: This constructs the filename for the backup archive. It includes the current directory ($current_dir), a prefix (my_backup_), and the current date and time in the format day-month-year_hours-minutes-seconds using $(date +%d-%m-%Y_%H-%M-%S).
# $HOME/*: This specifies the contents of the user's home directory to be included in the backup.
# The 2>/dev/null part redirects any error messages (stderr) to /dev/null, essentially discarding them. This is done to suppress any errors that might occur during the backup process.