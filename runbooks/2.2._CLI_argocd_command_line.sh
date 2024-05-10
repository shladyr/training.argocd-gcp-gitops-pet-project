# Doc
https://argo-cd.readthedocs.io/en/stable/user-guide/commands/argocd/

# !! It works !! BASH COMPLETION
https://sourabhbajaj.com/mac-setup/BashCompletion/
$ brew install bash-completion
$ echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile
$ source ~/.bash_profile


$ argocd app get guestbook
Name:               argocd/guestbook
Project:            default
Server:             https://kubernetes.default.svc
Namespace:          default
URL:                https://localhost:8080/applications/guestbook

$ argocd app sync guestbook
TIMESTAMP                  GROUP        KIND   NAMESPACE                  NAME    STATUS    HEALTH        HOOK  MESSAGE
2024-05-10T14:34:02+03:00            Service     default          guestbook-ui  OutOfSync  Missing
2024-05-10T14:34:02+03:00   apps  Deployment     default          guestbook-ui  OutOfSync  Missing
2024-05-10T14:34:02+03:00            Service     default          guestbook-ui    Synced  Healthy
