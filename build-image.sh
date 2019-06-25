#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
#set -e

# NOTE Login to the internal docker registry

# Build a docker image from the Dockerfile in the current directory and provide a local tag
# Tag image with short SHA of head commit
echo "Building image"
docker build -t systembug/centos7-jdk-node10-browsers:latest .
echo "Image built"

echo "Pushing image"
docker push systembug/centos7-jdk-node10-browsers:latest
echo "Push complete"

echo "Pushed systembug/centos7-jdk-node10-browsers:latest"
