#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=xuqupro/udacity

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo dckr_pat_ZCfGix_GkZ_TicEv0277oyYMHDc | docker login -u xuqupro

docker tag appml:v1.0.1 $dockerpath/appml:v1.0.1

# Step 3:
# Push image to a docker repository
docker push  $dockerpath/appml:v1.0.1