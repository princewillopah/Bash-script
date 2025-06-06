#!/bin/bash

# check if a service is running (and restart it like a boss if it’s not)

# What it does:
# Checks if a systemd service is active
# If not, tries to restart it
# Logs the result so you know if things went smooth or sideway

SERVICE_NAME=${1:-nginx}

echo "🔍 Checking if $SERVICE_NAME is running..."

if systemctl is-active --quiet "$SERVICE_NAME"; then
  echo "✅ $SERVICE_NAME is running fine."
else
  echo "⚠️ $SERVICE_NAME is not running. Attempting restart..."
  systemctl restart "$SERVICE_NAME"
  
  if systemctl is-active --quiet "$SERVICE_NAME"; then
    echo "✅ Restart successful."
  else
    echo "❌ Restart failed. Check logs ASAP."
  fi
fi



