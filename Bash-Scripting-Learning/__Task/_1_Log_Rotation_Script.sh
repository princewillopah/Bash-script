#!bin/bash
# what is log rotation?
# Log rotation is the process of managing log files by renaming, compressing, or deleting them to prevent them from consuming too much disk space.
# It helps in maintaining the system's performance and ensures that log files do not grow indefinitely.
# Log rotation can be done manually or automatically using tools like logrotate in Linux.   
# This script provides a simple way to rotate log files based on their size.
# It checks each log file in the specified directory, and if the file size exceeds the defined maximum size, it renames the file by appending ".old" to its name.
# This allows for easy identification of rotated logs and prevents the original log file from being overwritten.
# The script can be scheduled to run periodically using cron jobs, ensuring that log files are managed efficiently without manual intervention.
# It is important to monitor the log files regularly and adjust the rotation criteria as needed to suit the specific requirements of the system or application.




# # This script rotates log files in the /var/log directory.
# LOG_DIR="/var/log"
# MAX_LOG_SIZE=1000000  # Maximum log file size in bytes (1 MB)
# rotate_logs() {
#     for log_file in "$LOG_DIR"/*.log; do
#         if [ -f "$log_file" ]; then
#             log_size=$(stat -c%s "$log_file")
#             if [ "$log_size" -ge "$MAX_LOG_SIZE" ]; then
#                 mv "$log_file" "${log_file}.old"
#                 echo "Rotated $log_file to ${log_file}.old"
#             fi
#         fi
#     done
# }
# # Main script execution
# if [ -d "$LOG_DIR" ]; then
#     rotate_logs
# else
#     echo "Log directory $LOG_DIR does not exist."
#     exit 1
# fi # End of script

# Usage: Save this script as rotate_logs.sh and run it with appropriate permissions.
# Example: sudo bash rotate_logs.sh
# Note: Ensure that the script has execute permissions.
# Command to set execute permissions: chmod +x rotate_logs.sh
# This script should be run periodically, e.g., via a cron job.
# Example cron job entry to run the script daily at midnight:
# 0 0 * * * /path/to/rotate_logs.sh
# Make sure to replace /path/to/rotate_logs.sh with the actual path to the script.
# This script is a basic implementation and can be extended with more features like compression, timestamping, etc.
# It is recommended to test the script in a safe environment before deploying it in production.
# The script assumes that log files have a .log extension and are located in the /var/log directory.
# Adjust the MAX_LOG_SIZE variable as needed for your environment.
# Ensure that the script is run with sufficient permissions to access and modify files in the /var/log directory.



# Log Rotation
# Purpose: Rotate logs in a directory, compress old logs, and clean up old backups.


# find logs older than n numberof days,
# Rename the log file by appending ".old" to its name.
# Compress the old log file to save space.
# move the compressed log file to a backup directory.
# Delete old compressed logs that are older than a specified number of days.


# Example: Rotate logs in /var/log, compress old logs, and clean up backups older than 30 days.
# Usage: ./log_rotation.sh /var/log 1000000 30
# Note: Ensure that the script has execute permissions.
# Command to set execute permissions: chmod +x log_rotation.sh
# This script can be scheduled to run periodically using cron jobs.
# Example cron job entry to run the script daily at midnight:
# 0 0 * * * /path/to/log_rotation.sh /var/log 1000000 30    
# Make sure to replace /path/to/log_rotation.sh with the actual path to the script.

$LOG_DIR="/var/log"  # Directory containing log files

# check if the log directory exists
# if [ ! -d "$LOG_DIR" ]; then
#     echo "Log directory $LOG_DIR does not exist."
#     exit 1
# fi
if [[ -d "$LOG_DIR" ]]; then
    echo "Log directory $LOG_DIR exists."
else
    echo "Log directory $LOG_DIR does not exist."
    exit 1
fi

# create a backup directory if it doesn't exist
BACKUP_DIR="$LOG_DIR/backup"
if [[ ! -d "$BACKUP_DIR" ]]; then
    mkdir -p "$BACKUP_DIR"
    echo "Created backup directory $BACKUP_DIR."
else
    echo "Backup directory $BACKUP_DIR already exists."
fi

# rotate logs - get all log files in the log directory, append a timestamp to the filename, and move them to the backup directory
MAX_LOG_SIZE=1000000  # Maximum log file size in bytes (1 MB)
LOG_FILES=("$LOG_DIR"/*.log)
if [[ ${#LOG_FILES[@]} -eq 0 ]]; then
    echo "No log files found in $LOG_DIR."
    exit 0
fi

for log_file in "${LOG_FILES[@]}"; do
    if [[ -f "$log_file" ]]; then
        log_size=$(stat -c%s "$log_file")
        if [[ "$log_size" -ge "$MAX_LOG_SIZE" ]]; then
            timestamp=$(date +"%Y%m%d_%H%M%S")
            new_log_file="${log_file%.log}_$timestamp.log"
            mv "$log_file" "$new_log_file"
            echo "Rotated $log_file to $new_log_file."
            gzip "$new_log_file"
            mv "${new_log_file}.gz" "$BACKUP_DIR/"
            echo "Compressed and moved $new_log_file to $BACKUP_DIR."
        fi
    fi
done