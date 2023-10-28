#!/bin/bash

# Prompt for the repository name
read -p "Enter the repository name on GitHub: " repository_name

# Create the .gitignore file with the specified content
cat <<EOL > .gitignore
# Ignore node_modules directory, as it contains dependencies
node_modules/

# Ignore log files and error reports
logs/
*.log
npm-debug.log*

# Ignore local environment configuration files
.env
.env.local
.env.*.local

# Ignore user-specific files
.npm
.pnpm
yarn-error.log

# Ignore the build output
dist/
build/
out/

# Ignore coverage output
coverage/

# Ignore .DS_Store files on macOS
.DS_Store

# Ignore any local configuration files
.local-*

# Ignore any terraform configuration files
.terraform/

# Exclude the .terraform directory in any subdirectory
**/.terraform/

# Exclude the .terraform directory
/.terraform/
/.terraform.lock.hcl
# Exclude Terraform state files and directories
.terraform/
*.tfstate
*.tfstate.*
terraform.tfvars
.terraform.lock.hcl
# Exclude binary files downloaded during `terraform init`
*.bin

# Ignore specific inner Terraform directories and their contents
**/terraform/
**/terraform.tfstate
**/terraform.tfstate.*
**/terraform.tfvars
**/.terraform.lock.hcl
# Ignore binary files
*.bin


EOL

# Remove existing git-related files and folders
rm -rf .git

# Initialize a new Git repository
git init

# Add all files to the repository
git add .

# Make the first commit
git commit -m "first commit"

# Rename the branch to "master"
git branch -M master

# Set the remote origin based on user input and push to GitHub
git remote add origin "https://github.com/princewillopah/$repository_name.git"
git push -u origin master




echo "Repository initialized and pushed to GitHub."
