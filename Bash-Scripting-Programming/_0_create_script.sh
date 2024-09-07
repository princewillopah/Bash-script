#! /bin/bash

# Ask the user for the project name (root folder name)
read -p "Enter Topic Name: " topic_name

touch $topic_name

# cat <<EOF > "$project_root_dir/playbooks/example2.yml"

chmod +x $topic_name
echo "'$topic_name' created successfully."