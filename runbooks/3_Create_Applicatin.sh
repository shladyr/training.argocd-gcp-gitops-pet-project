# Create An Application From A Git Repository

$ kubectl port-forward svc/argocd-server -n argocd 8080:443
$ kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
cj9yiciBmuDQqt0T
$ argocd login localhost:8080 --username admin --password cj9yiciBmuDQqt0T


$ kubectl config set-context --current --namespace=argocd
Context "docker-desktop" modified.
$ argocd app create guestbook --repo https://github.com/argoproj/argocd-example-apps.git --path guestbook --dest-server https://kubernetes.default.svc --dest-namespace default
application 'guestbook' created

$ argocd app create guestbook \
  --repo https://github.com/argoproj/argocd-example-apps.git \
  --path guestbook \
  --dest-server https://kubernetes.default.svc \
  --app-namespace guestbook-namespace \
  --project web-app-pet-project