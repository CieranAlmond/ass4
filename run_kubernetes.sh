#!/usr/bin/env bash

# Step 1:
dockerpath="kibnov/container:latest"

# Step 2
kubectl run kibnov \
                --image=$dockerpath \
                --port=8080

# Step 3:
sleep 5
kubectl get pods

# Step 4:
kubectl port-forward kibnov 8000:8080
