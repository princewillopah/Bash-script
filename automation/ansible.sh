#!/bin/bash

# # Create the main project directory
# project_name="my_ansible_project"

# Ask the user for the project name (root folder name)
read -p "Enter the project name (root folder name): " project_name_input

# Create the project directory
project_root_dir="$project_name_input"

mkdir -p "$project_root_dir"

# Create subdirectories within the project
directories=("inventory" "group_vars" "host_vars" "roles" "playbooks")

for dir in "${directories[@]}"; do
    mkdir -p "$project_root_dir/$dir"
done

# Create an example playbook file
cat <<EOF > "$project_root_dir/playbooks/example.yml"
---
- name: Install and Start Nginx
  hosts: web  # Replace with the target hosts or groups
  become: yes  # Enable privilege escalation to Be able to install packages Just like root user. You know currently this is just an Ubuntu user

  tasks:
    - name: Update package cache
      apt:
        update_cache: yes
      when: ansible_os_family == 'Debian'  # Use appropriate condition for your OS

    - name: Install Nginx
      package:
        name: nginx
        state: present
      when: ansible_os_family == 'Debian'  # Use appropriate condition for your OS

    - name: Start Nginx service
      service:
        name: nginx
        state: started
        enabled: yes
      when: ansible_os_family == 'Debian'  # Use appropriate condition for your OS
EOF

# Create an example2 playbook file
cat <<EOF > "$project_root_dir/playbooks/example2.yml"
---
- name: Install and Start Nginx
  hosts: web  # Replace with the target hosts or groups
  become: yes  # Enable privilege escalation to Be able to install packages Just like root user. You know currently this is just an Ubuntu user

  tasks:
    - name: Update package cache
      apt:
        update_cache: yes
      when: ansible_os_family == 'Debian'  # Use appropriate condition for your OS

    - name: Install Nginx
      package:
        name: nginx
        state: present
      when: ansible_os_family == 'Debian'  # Use appropriate condition for your OS

    - name: Start Nginx service
      service:
        name: nginx
        state: started
        enabled: yes
      when: ansible_os_family == 'Debian'  # Use appropriate condition for your OS
EOF

# # Create a sample inventory file
# cat <<EOF > "$project_root_dir/inventory/hosts.ini"
# [web]
# localhost ansible_connection=local
# EOF

# Create a sample inventory file
cat <<EOF > "$project_root_dir/inventory/hosts"
[web]
51.20.35.209 ansible_ssh_private_key_file=~/.ssh/disposible-sshkey ansible_user=ubuntu
EOF

# Create a sample host_vars file
cat <<EOF > "$project_root_dir/host_vars/localhost.yml"
---
ansible_ssh_user: myuser
EOF

# Create a sample group_vars file
cat <<EOF > "$project_root_dir/group_vars/web.yml"
---
ntp_servers:
  - ntp1.example.com
  - ntp2.example.com
EOF

# Create ansible.cgf files
touch "$project_root_dir/ansible.cfg" 
#populate it
cat <<EOF > "$project_root_dir/ansible.cfg"
[defaults]
host_key_checking = False
remote_user = ubuntu
private_key_file = ~/.ssh/disposible-sshkey
inventory = inventory/hosts
EOF


echo "Ansible project structure created in '$project_root_dir'."
