
# env label이  dev 인 갯수
# wc 는 리눅스 명령어로 -l 붙이면 라인 수를 찾음
# --no-headers를 붙여서 사용해야 헷갈리지 않음

kubectl get pods --selector env=dev --no-headers | wc -l

kubectl get pods --selector bu=finance --no-headers | wc -l

# get all로 모든 라벨이 붙은 걸 찾ㅇ르 수도 있다.

kubectl get all --selector env=prod --no-headers | wc -l

# selector는 쉼표로 and 가능
kubectl get all --selector env=prod,bu=finance,tier=frontend



apiVersion: apps/v1
kind: ReplicaSet
metadata:
   name: replicaset-1
spec:
   replicas: 2
   selector:
      matchLabels:
        tier: front-end
   template:
     metadata:
       labels:
        tier: nginx
     spec:
       containers:
       - name: nginx
         image: nginx

---

apiVersion: apps/v1
kind: ReplicaSet
metadata:
   name: replicaset-1
spec:
   replicas: 2
   selector:
      matchLabels:
        tier: front-end
   template:
     metadata:
       labels:
        tier: front-end
     spec:
       containers:
       - name: nginx
         image: nginx
 
---