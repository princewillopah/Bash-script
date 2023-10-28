#!/bin/bash

# Ask the user for the project name (root folder name)
read -p "Enter the project name (root folder name): " project_name

# Create the project directory
project_dir="$project_name"
mkdir -p "$project_dir"

# Create root Terraform files
touch "$project_dir/main.tf" "$project_dir/variables.tf" "$project_dir/terraform.tf" "$project_dir/output.tf" "$project_dir/provider.tf"

# Add variables to the 'variables.tf' file
echo 'variable "avail_zone" {' >> "$project_dir/variables.tf"
echo '  default = "eu-north-1a"' >> "$project_dir/variables.tf"
echo '  description = ""' >> "$project_dir/variables.tf"
echo '}' >> "$project_dir/variables.tf"

echo 'variable "env_prefix" {' >> "$project_dir/variables.tf"
echo '  default = ""' >> "$project_dir/variables.tf"
echo '  description = ""' >> "$project_dir/variables.tf"
echo '}' >> "$project_dir/variables.tf"

# Create the 'modules' directory
mkdir -p "$project_dir/modules"

# Create 'EC2' module
mkdir -p "$project_dir/modules/EC2"
touch "$project_dir/modules/EC2/main.tf" "$project_dir/modules/EC2/variables.tf" "$project_dir/modules/EC2/output.tf" "$project_dir/modules/EC2/security-group.tf"

# Create 'VPC' module
mkdir -p "$project_dir/modules/VPC"
touch "$project_dir/modules/VPC/main.tf" "$project_dir/modules/VPC/variables.tf" "$project_dir/modules/VPC/output.tf" "$project_dir/modules/VPC/route-table.tf" "$project_dir/modules/VPC/subnet.tf"

# Print a message indicating the folder structure has been created
echo "Terraform folder structure for project '$project_name' created successfully."

# Optionally, you can add some initial content to the .tf files if needed.
