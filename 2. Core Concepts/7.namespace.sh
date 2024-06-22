kubectl get pods --namespace=dev
kubectl config set-context $(kubectl config current-context) --namespace=dev
kubectl config current-context

kubectl get pods --all-namespaces
