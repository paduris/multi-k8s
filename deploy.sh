docker build -t spaduri/multi-client:latest -t spaduri/multi-client:$SHA  -f ./client/Dockerfile ./client
docker build -t spaduri/multi-server:latest -t spaduri/multi-server:$SHA  -f ./server/Dockerfile ./server
docker build -t spaduri/multi-worker:latest -t spaduri/multi-worker:$SHA  -f ./worker/Dockerfile ./worker
docker push spaduri/multi-client:latest
docker push spaduri/multi-server:latest
docker push spaduri/multi-worker:latest


docker push spaduri/multi-client:$SHA
docker push spaduri/multi-server:$SHA
docker push spaduri/multi-worker:$SHA


kubectl apply -f k8s
kubectl set image deployments/client-deployment client=spaduri/multi-client:$SHA
kubectl set image deployments/server-deployment server=spaduri/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=spaduri/multi-worker:$SHA
