repo_names = [
    "Ansible",
    "CI-withJenkins-CD-withJenkins-Swiggy",
    "JENKINS_SHARED_LIBRARY",
    "cicd-useful-materials-1",
    "dynamic-websites",
    "Bash-script",
    "DevOps-CI-withJenkins-CD-withArgoCD-reg-app-gitops-repo",
    "Java",
    "cicd-with-jenkins-1",
    "folked-repos",
    "CI-withJenkins-CD-withArgoCD",
    "DevOps-Others",
    "K8-Master",
    "cicd-with-jenkins-2",
    "other-cloud-stuff",
    "CI-withJenkins-CD-withJenkins-Amazon-Frontend",
    "Docker",
    "K8s",
    "create-react-app",
    "reg-app-CI-withJenkins-CD-withArgoCD2",
    "CI-withJenkins-CD-withJenkins-BoardGame",
    "EKS-Complete",
    "Terraform",
    "create-react-app2",
    "static-websites"
]

github_urls = [f"https://github.com/princewillopah/{repo}.git" for repo in repo_names]

for url in github_urls:
    print(url)
