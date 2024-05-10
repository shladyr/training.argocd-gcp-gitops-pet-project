
# Use Ref https://argo-cd.readthedocs.io/en/stable/getting_started/


$ kubectl create namespace argocd
$ kubectl get ns argocd -o wide
$ kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Get Password
$ argocd admin initial-password -n argocd
cj9yiciBmuDQqt0T

# Create Port-Forward
# Login to UI

Name-of-Project           - Web-App-Pet-Project
Name-of-App               - web-app-demo-resume
Name-of-NameSpace         - web-app-demo-resume-namespace
Name-of-Role              - Web-App-Pet-Project-Admin-Role
Name-of-Project-Role      - Web-App-Pet-Project-Admin-Role ?
Name-of-Group             - Web-App-Pet-Project-Admin-Group





