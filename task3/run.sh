#!/usr/bin/env bash

IMAGE_NAME="lyubortk-task3"
docker build -f "Dockerfile" -t "$IMAGE_NAME" ./application/
docker run -v "$(pwd)/page":/data -p 8000:8000 -it "$IMAGE_NAME"
