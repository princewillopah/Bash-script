#!/bin/bash

# remove dangling Docker images and volumes (because disk space is precious)

# What it does:
# Removes unused Docker images (those with <none> tags)
# Deletes orphaned volumes that aren’t used by any container
# Clears out containers that exited or were never started properly


echo "🧹 Cleaning up dangling Docker images..."
docker image prune -f

echo "🧺 Removing unused Docker volumes..."
docker volume prune -f

echo "🗑️ Removing stopped containers..."
docker container prune -f

echo "✅ Docker cleanup complete."