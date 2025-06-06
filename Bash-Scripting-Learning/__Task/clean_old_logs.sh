#!/bin/bash

# What it does:
# Looks inside /var/log by default (or any directory you pass)
# Finds .log files older than 7 days (or any number you specify)
# Deletes them with a nice verbose output so you know what died



TARGET_DIR=${1:-/var/log}
DAYS_OLD=${2:-7}

echo "🧼 Cleaning up logs in $TARGET_DIR older than $DAYS_OLD days..."
find "$TARGET_DIR" -type f -name "*.log" -mtime +"$DAYS_OLD" -exec rm -v {} \;
echo "✅ Cleanup complete!"