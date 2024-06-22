# 1. pod 배포
ll 
kubectl create -f nginx.yml
# 2. pod 확인
kubectl get po nginx
# 3. 상태 확인
kubectl describe po nginx
# 4. kube-system 상태 확인 
kubectl get pods -n kube-system
# 5. nodeName 수동 설정
vi nginx.yml
kubectl delete pod nginx
kubectl create -f nginx.yml
---
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  nodeName: controlplane
  containers:
  -  image: nginx
     name: nginx
