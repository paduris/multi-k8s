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
kubectl logs <pod-name>




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




For encrypting the service-account json file 

docker run -it -v$(pwd):/app ruby:2.3 sh

gem install travis 
gem 


travis login --pro
travis encrypt-file <service-account.json> --pro -r <githubuser>/multi-k8s