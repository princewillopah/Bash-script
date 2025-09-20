#!/bin/bash


# What it does:
# Creates a timestamped .sql backup of your PostgreSQL database
# Saves it in a custom or default directory
# Fails gracefully and lets you know if something goes wrong



DB_NAME=${1:-mydatabase}
BACKUP_DIR=${2:-/backups}
USER_NAME=${3:-postgres}

TIMESTAMP=$(date +"%F_%T")
FILENAME="$BACKUP_DIR/${DB_NAME}_backup_$TIMESTAMP.sql"

mkdir -p "$BACKUP_DIR"

echo "💾 Backing up database '$DB_NAME' to $FILENAME"
pg_dump -U "$USER_NAME" "$DB_NAME" > "$FILENAME"

if [ $? -eq 0 ]; then
  echo "✅ Backup successful!"
else
  echo "❌ Backup failed!"
fi