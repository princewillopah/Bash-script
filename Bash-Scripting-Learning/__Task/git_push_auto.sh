#!/bin/bash

# What it does:
# Adds all changes in the current repo
# Commits with either a custom or auto-generated message
# Pushes to the current branch

COMMIT_MSG=${1:-"auto-commit: $(date)"}

echo "📁 Adding changes..."
git add .

echo "📝 Committing with message: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

echo "🚀 Pushing to remote..."
git push

echo "✅ Done!"