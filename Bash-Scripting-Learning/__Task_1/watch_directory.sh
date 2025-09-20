#!/bin/bash

# What it does:
# Monitors a directory and its subfolders for file changes
# Logs timestamped events (modified, created, deleted, or moved files)
# Outputs to both screen and log file

# You need inotify-tools installed: sudo apt install inotify-tools



WATCH_DIR=${1:-/etc}
EVENTS="modify,create,delete,move"
LOGFILE="watch_$(basename $WATCH_DIR)_$(date +%F).log"

echo "👁️ Watching $WATCH_DIR for changes..."
inotifywait -m -r -e $EVENTS "$WATCH_DIR" --format '%T %w%f %e' --timefmt '%F %T' | tee -a "$LOGFILE"