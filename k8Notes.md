kubectl get deployments
kubectl delete deployment client-deployment
kubectl get deployments
kubectl get services
kubectl delete service client-node-port
kubectl get services

We can use the below command to run the file individually or 
kubectl apply -f k8s/client-deployment.yaml 
use this command to run all files at a time by running from a directory
kubectl apply -f k8s


Logs:

kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
client-deployment-ccd6b85bb-dltl5    1/1     Running   0          30m
client-deployment-ccd6b85bb-f6pvd    1/1     Running   0          30m
client-deployment-ccd6b85bb-t4lll    1/1     Running   0          30m
server-deployment-7d67b546ff-j67rf   1/1     Running   0          2m11s
server-deployment-7d67b546ff-k2c2x   1/1     Running   0          2m11s
server-deployment-7d67b546ff-wf748   0/1     Pending   0          2m11s
worker-deployment-7456468848-jfh5t   1/1     Running   0          2m11s
Sureshs-MacBook-Pro:complex-app paduris$ kubectl logs server-deployment-7d67b546ff-k2c2x

> @ start /app
> node index.js

Listening
Error: connect ECONNREFUSED 127.0.0.1:5432
    at TCPConnectWrap.afterConnect [as oncomplete] (net.js:1129:14) {
  errno: -111,
  code: 'ECONNREFUSED',
  syscall: 'connect',
  address: '127.0.0.1',
  port: 5432
}




kubectl get storageclass
kubectl describe storageclass 
--Get persistent volues
kubectl get pv  
kubectl get pvc


Secret:

kubectl create secret generic pgpassword --from-literal PGPASSWORD=12345asdf

kubectl get secrets


Ingress - Loadbalancer

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
minikube addons enable ingress