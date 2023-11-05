#!/bin/bash

# Check if the repo_list.txt file exists .
if [ ! -f "repo_list.txt" ]; then
    echo "Error: repo_list.txt not found. Create the file and add Git repository URLs."
    exit 1
fi

# Loop through the list of repositories and clone each one
while IFS= read -r repo_url; do
    echo "Cloning repository: $repo_url"
    git clone "$repo_url"
    # Add any other actions you want to perform for each repository here
done < "repo_list.txt"

echo "Cloning complete."
