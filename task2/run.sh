#!/usr/bin/env bash

IMAGE_NAME="lyubortk-task2"
docker build -f "Dockerfile" -t "$IMAGE_NAME" ./application/
docker run -p 8000:8000 -it "$IMAGE_NAME"
