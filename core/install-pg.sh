NS=rp
kubectl create ns $NS
kubectl -n $NS apply -f yaml/postgres-configmap.yaml
kubectl -n $NS apply -f yaml/postgres-storage.yaml
kubectl -n $NS apply -f yaml/postgres-deployment.yaml
kubectl -n $NS apply -f yaml/postgres-service.yaml

