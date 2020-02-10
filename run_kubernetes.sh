#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="kareem5020/udacityproject4"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacityproject4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose deployment/udacityproject4 --type="LoadBalancer" --port 80
NODE_PORT=$(kubectl get services/udacityproject4 -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT
echo $(minikube ip):$NODE_PORT


