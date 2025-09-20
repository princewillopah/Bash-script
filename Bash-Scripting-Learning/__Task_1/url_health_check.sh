#!/bin/bash

# test a URL and alert if it fails because downtime sucks


# What it does:
# Uses curl to ping a URL and fetch the HTTP status code
# Logs the result with timestamps
# Alerts you in the console (and optionally via integrations) if the site isn’t returning a 200 OK



URL=${1:-https://example.com}
LOGFILE="url_check_$(date +%F).log"

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

echo "$(date) - Checking $URL - Status code: $STATUS_CODE" | tee -a "$LOGFILE"

if [ "$STATUS_CODE" -ne 200 ]; then
  echo "🚨 ALERT: $URL is down or returned $STATUS_CODE!" | tee -a "$LOGFILE"
  # Optionally send an alert (email, Slack, webhook)
fi