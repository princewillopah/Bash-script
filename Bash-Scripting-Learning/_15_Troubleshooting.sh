
### ==========================================================================================================================================================
### Robust Error Handling Example
### ==========================================================================================================================================================

#!/bin/bash

set -euo pipefail  # Strict mode: exits on error or undefined variable

fetch_data() {
    if ! curl -fsS "https://api.example.com/data"; then
        echo "ERROR: Failed to fetch data" >&2
        return 1
    fi
}

main() {
    if ! data=$(fetch_data); then
        exit 1
    fi
    echo "$data" | jq .  # Process data
}

main

# Key Techniques:

    # set -e: Exit immediately if any command fails.

    # set -u: Treat unset variables as errors.

    # set -o pipefail: Catch pipeline failures (e.g., cmd1 | cmd2).

    # >&2: Redirect errors to stderr (standard practice for logs).


### ==========================================================================================================================================================
### Logging Strategies
### ==========================================================================================================================================================
log() {
    local LEVEL="$1"
    local MESSAGE="$2"
    local TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "[$TIMESTAMP] [$LEVEL] $MESSAGE" \
        | tee -a "/var/log/${0##*/}.log"  # Logs to file named after script
}

# Usage:
log "INFO" "Starting database backup..."
pg_dump mydb > backup.sql || log "ERROR" "Backup failed!"

# Log Output:
    # [2024-03-15 14:30:45] [INFO] Starting database backup...
    # [2024-03-15 14:31:02] [ERROR] Backup failed!






### ==========================================================================================================================================================
### Log Rotation (Real-World DevOps)
### ==========================================================================================================================================================

# In production, use logrotate to manage logs:

# /etc/logrotate.d/myapp
/var/log/myapp_*.log {
    daily
    rotate 7
    compress
    missingok
    notifempty
}





### ==========================================================================================================================================================
### Input Validation
### ==========================================================================================================================================================
# Secure Argument Parsing
------------------------
#!/bin/bash

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --env=*)
            ENV="${1#*=}"
            ;;
        --force)
            FORCE=1
            ;;
        *)
            echo "Unknown parameter: $1" >&2
            exit 1
            ;;
    esac
    shift
done

validate_env() {
    declare -a VALID_ENVS=("prod" "staging")
    if ! [[ " ${VALID_ENVS[*]} " =~ " $ENV " ]]; then
        echo "Invalid env: $ENV. Must be [${VALID_ENVS[*]}]" >&2
        exit 1
    fi
}
------------------------
--------
# Usage:
--------
    ./deploy.sh --env=prod --force


### ==========================================================================================================================================================
### Real-World Example: Server Provisioning Script
### ==========================================================================================================================================================

#!/usr/bin/env bash
# Purpose: Automates server setup for a Node.js app.

set -euo pipefail

# --- Config ---
APP_USER="nodeapp"
APP_DIR="/opt/nodeapp"
GIT_REPO="https://github.com/company/nodeapp.git"

# --- Functions ---
install_dependencies() {
    log "INFO" "Installing dependencies..."
    apt-get update && apt-get install -y \
        git \
        nodejs \
        npm \
        nginx \
        certbot
}

setup_app_user() {
    if ! id "$APP_USER" &>/dev/null; then
        useradd -m -d "$APP_DIR" -s /bin/bash "$APP_USER"
    fi
}

deploy_app() {
    sudo -u "$APP_USER" git clone "$GIT_REPO" "$APP_DIR"
    cd "$APP_DIR" && npm install
    systemctl restart nodeapp
}

# --- Main ---
main() {
    install_dependencies
    setup_app_user
    deploy_app
}

main




### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================






### ==========================================================================================================================================================
### 
### ==========================================================================================================================================================



