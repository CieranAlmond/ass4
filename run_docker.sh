#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

docker build --tag=kibnov  .
docker image ls
docker run -p 8000:8080 kibnov
