NS=rp
kubectl create ns $NS

kubectl create -n $NS secret docker-registry dev-registry-creds --docker-server=registry.dev.rafay-edge.net:5000 --docker-username=rcloud_user --docker-password='rcloud_mcpep&17_user' --docker-email=andy@rafay.co

# postgres
kubectl -n $NS apply -f yaml/postgres-configmap.yaml
kubectl -n $NS apply -f yaml/postgres-storage.yaml
kubectl -n $NS apply -f yaml/postgres-deployment.yaml
kubectl -n $NS apply -f yaml/postgres-service.yaml

# cluster scheduler
kubectl -n $NS apply -f yaml/cluster-scheduler-deployment.yaml
kubectl -n $NS apply -f yaml/cluster-scheduler-service.yaml
