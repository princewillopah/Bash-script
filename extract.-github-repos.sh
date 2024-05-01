#!/bin/bash

# Set your GitHub username
USERNAME=""

# Set your personal access token with repo scope
TOKEN=""

# Make a GET request to the GitHub API to retrieve the list of repositories
curl -s -H "Authorization: token $TOKEN" "https://api.github.com/users/$USERNAME/repos" | \
    grep -Eo '"clone_url": "[^"]+"' | \
    awk -F ' ' '{print $2}' | \
    sed 's/"//g'

