#!/bin/bash
set -e 

# Pull the Docker image from Docker Hub
docker pull ramprasadv7/test-build:latest


# Run the Docker image as a container
docker run -d -p 5000:5000 ramprasadv7/test-build:latest
