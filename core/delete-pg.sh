NS=rp
kubectl delete service postgres
kubectl delete -n $NS deployment.app/postgres
kubectl delete -n $NS configmap/postgres-config
kubectl delete persistentvolumeclaim postgres-pv-claim
kubectl delete persistentvolume postgres-pv-volume

