#!/bin/bash

IMAGE_NAME="test"
IMAGE_TAG="v1"

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .

if [ $? -eq 0 ]; then
  echo "Docker image '${IMAGE_NAME}:${IMAGE_TAG}' was built successfully."
else
  echo "Failed to build Docker image '${IMAGE_NAME}:${IMAGE_TAG}'."
fi

