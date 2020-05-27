#!/usr/bin/env bash

IMAGE_NAME="lyubortk-task1"
docker build -f "Dockerfile" -t "$IMAGE_NAME" ./application/
docker run -v "$(pwd)/script":/data -i "$IMAGE_NAME"
