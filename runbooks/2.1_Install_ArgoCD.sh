
# Use Ref https://argo-cd.readthedocs.io/en/stable/getting_started/


$ kubectl create namespace argocd
$ kubectl get ns argocd -o wide
$ kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
$ cat .config/argocd/config

# Get Password
$ argocd admin initial-password -n argocd
cj9yiciBmuDQqt0T

# Register
$ kubectl port-forward svc/argocd-server -n argocd 8080:443
$ kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
cj9yiciBmuDQqt0T
$ argocd login localhost:8080 --username admin --password cj9yiciBmuDQqt0T
$ cat .config/argocd/config

# Completion For bash
https://tecadmin.net/enable-bash-completion-on-macos/
$ brew install bash-completion git-extras
$ brew install bash-completion@2
$ source <(argocd completion bash)

# !! It works !! BASH COMPLETION
https://sourabhbajaj.com/mac-setup/BashCompletion/
$ brew install bash-completion
$ echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile
$ source ~/.bash_profile

# Create Port-Forward
# Login to UI

SERVER_URL                - https://kubernetes.default.svc
Name-of-Cluster           - sirko-macbook-cluster
Name-of-Project           - Web-App-Pet-Project
Name-of-App               - web-app-demo-resume
Name-of-NameSpace         - web-app-demo-resume-namespace
Name-of-Role              - Web-App-Pet-Project-Admin-Role
Name-of-Project-Role      - Web-App-Pet-Project-Admin-Role ?
Name-of-Group             - Web-App-Pet-Project-Admin-Group
Name-of-Repo-URL          - https://github.com/shladyr/training.argocd-gcp-gitops-pet-project

$ kubectl create namespace web-app-demo-resume-namespace
$ kubectl get ns web-app-demo-resume-namespace

# Register A Cluster To Deploy Apps To (Optional)
$ argocd login 127.0.0.1:6443
$ argocd cluster add docker-desktop
$ kubectl config get-contexts -o name
$ argocd cluster add docker-desktop
WARNING: This will create a service account `argocd-manager` on the cluster referenced by context `docker-desktop` with full cluster level privileges. Do you want to continue [y/N]? y
INFO[0009] ServiceAccount "argocd-manager" created in namespace "kube-system"
INFO[0009] ClusterRole "argocd-manager-role" created
INFO[0009] ClusterRoleBinding "argocd-manager-role-binding" created
INFO[0014] Created bearer token secret for ServiceAccount "argocd-manager"
FATA[0015] Argo CD server address unspecified



