#!/bin/bash

IMAGE_NAME="test"
TAG="v1"

# Build the Docker image
docker build -t "${IMAGE_NAME}:${TAG}" .

# Tag the image with the Docker Hub repository name
DOCKERHUB_REPO="sayan003/capstone_project"
docker tag "${IMAGE_NAME}:${TAG}" "${DOCKERHUB_REPO}:${TAG}"

echo "Enter your Docker Hub username:"
read DOCKERHUB_USERNAME

echo "Enter your Docker Hub password:"
read -s DOCKERHUB_PASSWORD

# Log in to Docker Hub
sudo docker login --username "${DOCKERHUB_USERNAME}" --password "${DOCKERHUB_PASSWORD}"

# Push the image to Docker Hub
sudo docker push "${DOCKERHUB_REPO}:${TAG}"

sudo docker run -p 8000:8000 "${DOCKERHUB_REPO}:${TAG}"

