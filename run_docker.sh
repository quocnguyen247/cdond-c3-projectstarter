#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t appml:v1.0.1 .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
python3 -m venv venv
. venv/bin/activate
make install
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
chmod +x /bin/hadolint
hadolint --ignore DL3013 Dockerfile
docker run -d appml:v1.0.1 -p 8000:80 
