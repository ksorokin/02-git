* Start kubernetes cluster `k3d cluster start k3d-cluster`
* Create argocd manaspace and apply ltest stable release deployment file:
  ```
  kubectl create namespace argocd
  kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
  ```
* Get admin generated password:
   ```
    kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d; echo
   ```
* Forwaerd port for a Web UI: 
  ```
    kubectl port-forward svc/argocd-server -n argocd 8080:443&
  ```
* Go to AgroCD web interface at `localhost:8080`

# Demo
[Argocd POC Demo](https://github.com/ksorokin/02-git/assets/1850575/004ae8c9-6446-47d1-a93b-962f6d9db1a3)



