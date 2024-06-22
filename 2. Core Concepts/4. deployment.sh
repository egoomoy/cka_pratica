kubectl run nginx --image=nginx
kubectl run nginx --image=nginx --dry-run=client -o yaml > nginx_pod.yml
kubectl create deployment --image=nginx nginx --dry-run=client -o yaml

kubectl create deployment --image=httpd:2.4-alpine httpd-frontend 
--replicas=3 --dry-run=client -o yaml > my_front.yaml