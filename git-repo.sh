#!/bin/bash

# Provided list of repositories
repositories="
Ansible
CI-withJenkins-CD-withJenkins-Swiggy
JENKINS_SHARED_LIBRARY
cicd-useful-materials-1
dynamic-websites
Bash-script
DevOps-CI-withJenkins-CD-withArgoCD-reg-app-gitops-repo
Java
cicd-with-jenkins-1
folked-repos
CI-withJenkins-CD-withArgoCD
DevOps-Others
K8-Master
cicd-with-jenkins-2
other-cloud-stuff
CI-withJenkins-CD-withJenkins-Amazon-Frontend
Docker
K8s
create-react-app
reg-app-CI-withJenkins-CD-withArgoCD2
CI-withJenkins-CD-withJenkins-BoardGame
EKS-Complete
Terraform
create-react-app2
static-websites
"

# GitHub username
username="princewillopah"

# Iterate over each repository name and construct GitHub repository URL
while IFS= read -r repository; do
    echo "https://github.com/$username/$repository.git"
done <<< "$repositories"
