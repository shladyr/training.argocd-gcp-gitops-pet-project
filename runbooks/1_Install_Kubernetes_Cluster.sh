
# Use Ref https://argo-cd.readthedocs.io/en/stable/getting_started/

# Install Kubernetes

$ kubectl cluster-info
Kubernetes control plane is running at https://127.0.0.1:6443
CoreDNS is running at https://127.0.0.1:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

$ kubectl config view -o jsonpath='{"Cluster name\tServer\n"}{range .clusters[*]}{.name}{"\t"}{.cluster.server}{"\n"}{end}'
Cluster name	Server
docker-desktop	https://127.0.0.1:6443

$ kubectl version
Client Version: v1.29.1
Kustomize Version: v5.0.4-0.20230601165947-6ce0bf390ce3
Server Version: v1.28.2

$ kubectl get nodes
NAME             STATUS   ROLES           AGE    VERSION
docker-desktop   Ready    control-plane   115d   v1.28.2

###############

$ grep desktop ~/.kube/config
  name: docker-desktop
    cluster: docker-desktop
    user: docker-desktop
  name: docker-desktop
- name: docker-desktop

$ kubectl config get-contexts | grep desktop
*         docker-desktop                   docker-desktop               docker-desktop

$ kubectl config use-context docker-desktop
Switched to context "docker-desktop".

$ kubectl config current-context
docker-desktop

$ kubectl config view | grep desktop
  name: docker-desktop
    cluster: docker-desktop
    user: docker-desktop
  name: docker-desktop
current-context: docker-desktop
- name: docker-desktop

