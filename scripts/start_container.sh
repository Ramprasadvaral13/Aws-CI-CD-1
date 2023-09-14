#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull ramprasadv7/python-flask


# Run the Docker image as a container
docker run -it -p 5000:5000 ramprasadv7/python-flask
