#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="kareem5020/udacityproject4"

# Step 2:  
# Authenticate & tag
sudo docker login
sudo docker tag udacityproject4 $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
sudo docker push  $dockerpath