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
docker run --rm -d -p 8000:80 appml:v1.0.1 
