kubectl get pods

kubectl run nginx --image nginx

kubectl describe pod newpods-xjxl8

kubectl delete pod webapp

kubectl run redis --image=redis123 --dry-run=client -o yaml
> redis-definition.yaml

cat redis-definition.yaml

kubectl edit pod redis

kubectl apply -f redis-definition.yaml 