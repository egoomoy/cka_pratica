kubectl create -f replicaSet.yml

kubectl get replicaset "레플리카 메타 이름"

kubectl delete replicaset 
# 레플리카셋 삭제하면 하위 파드도 다 삭제

# replicas 수정 후 
kubectl replace -f replicaSet.yml

kubectl scale --replicas=6 -f replicaSet.hml
kubectl scale --replicas=6 replicaset "레플리카 메타 이름"

 kubectl edit replicaset new-replica-set

