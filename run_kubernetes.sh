#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=xuqupro/appml
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy myappml --image=$dockerpath:v1.0.1 -port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deploy/myappml 80:80
