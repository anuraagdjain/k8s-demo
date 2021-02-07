# build docker images
# push docker images to repository
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=stephengrider/multi-server:latest
kubectl set image deployments/client-deployment server=stephengrider/multi-client:latest
kubectl set image deployments/worker-deployment server=stephengrider/multi-worker:latest