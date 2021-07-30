#!/usr/bin/env bash

# Step 1:
dockerpath="kibnov/container"

# Step 2:  
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag kibnov $dockerpath

# Step 3:
docker image push $dockerpath
