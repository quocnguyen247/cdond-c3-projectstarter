#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=xuqupro/appml

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "dckr_pat_ZCfGix_GkZ_TicEv0277oyYMHDc" | docker login -u xuqupro --password-stdin

docker tag appml:v1.0.1 $dockerpath:v1.0.1

# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1.0.1