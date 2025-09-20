#!/bin/bash
# rotate-logs.sh


# ------------------------------------------
#  version 1
# ------------------------------------------
# # LOG="/var/log/myapp.log"
# # ARCHIVE="/var/log/archive"
# LOG="/home/$USER/my_custom_logs/myapp.log"
# ARCHIVE="/home/$USER/my_custom_logs/archive"
# TIMESTAMP=$(date +"%Y%m%d-%H%M")

# mkdir -p $ARCHIVE

# if [ -f "$LOG" ]; then
#     cp $LOG $ARCHIVE/myapp-$TIMESTAMP.log
#     > $LOG  # truncate
#     echo "Rotated at $TIMESTAMP"
# else
#     echo "No log file found at $LOG"
# fi


# ------------------------------------------
#  version 2
# ------------------------------------------
## it comes with better error handling

# LOG="/home/$USER/my_custom_logs/myapp.log"
# ARCHIVE="/home/$USER/my_custom_logs/archive"
# TIMESTAMP=$(date +"%Y%m%d-%H%M")

# if mkdir -p "$ARCHIVE"; then
#   echo "Archive directory created successfully"
# else
#   echo "Failed to create archive directory"
#   exit 1
# fi

# if [ -f "$LOG" ]; then
#   if cp "$LOG" "$ARCHIVE/myapp-$TIMESTAMP.log"; then
#     sleep 1
#     truncate -s 0 "$LOG"
#     echo "Rotated at $TIMESTAMP"
#   else
#     echo "Failed to rotate log file"
#     exit 1
#   fi
# else
#   echo "No log file found at $LOG"
#   exit 1
# fi


# ------------------------------------------
#  version 2
# ------------------------------------------

## it only log rotate myapp.log with content. if the file is empty, it won't rotate
## this is checked by "&& [ $(stat -c%s "$LOG") -gt 0 ]"
## ✅ Edge cases covered:
## Log missing → safe exit.
## Old logs kept with timestamp.
## Won’t delete active log, just truncates.




LOG="/home/$USER/my_custom_logs/myapp.log"
ARCHIVE="/home/$USER/my_custom_logs/archive"
TIMESTAMP=$(date +"%Y%m%d-%H%M")

if mkdir -p "$ARCHIVE"; then
  echo "Archive directory created successfully"
else
  echo "Failed to create archive directory"
  exit 1
fi

if [ -f "$LOG" ] && [ $(stat -c%s "$LOG") -gt 0 ]; then
  if cp "$LOG" "$ARCHIVE/myapp-$TIMESTAMP.log"; then
    sleep 1
    truncate -s 0 "$LOG"
    echo "Rotated at $TIMESTAMP"
  else
    echo "Failed to rotate log file"
    exit 1
  fi
else
  echo "No log file or empty log file found at $LOG"
  exit 1
fi