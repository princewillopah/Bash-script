#!/bin/bash

detect failed SSH login attempts (and catch the sneaky bois)

# What it does:
# Scans the system's auth log for failed SSH login attempts
# Outputs a report with timestamps and IP addresses 
# Saves the report to a dated log file
# Requires root privileges to read /var/log/auth.log

# What it does:
# Scans /var/log/auth.log for failed login attempts
# Extracts IP addresses and timestamps
# Counts and sorts the attempts by frequency
# Saves the result to a nice readable log file




LOG_FILE="/var/log/auth.log"
OUTPUT_FILE="ssh_failures_$(date +%F).log"

echo "🛡️ Detecting failed SSH login attempts..."
grep "Failed password" "$LOG_FILE" | awk '{print $1, $2, $3, $11}' | sort | uniq -c | sort -nr > "$OUTPUT_FILE"

echo "📄 Report saved to $OUTPUT_FILE"
cat "$OUTPUT_FILE"