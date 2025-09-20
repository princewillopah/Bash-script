#!/bin/bash

# update and upgrade all packages safely without nuking your system

# What it does:
# Updates the apt package index
# Upgrades all packages non-interactively
# Removes unused dependencies
# Logs every change with timestamps for tracking




LOGFILE="update_log_$(date +%F_%H-%M-%S).log"

echo "⚙️ Updating package lists..."
sudo apt update | tee "$LOGFILE"

echo "⬆️ Upgrading installed packages..."
sudo apt upgrade -y | tee -a "$LOGFILE"

echo "🧽 Autoremoving unused packages..."
sudo apt autoremove -y | tee -a "$LOGFILE"

echo "📄 Update log saved to $LOGFILE"