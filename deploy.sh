docker build -t serg-bs/janus ./janus/Dockerfile ./janus
docker push serg-bs/janus
kubectl apply -f k8s