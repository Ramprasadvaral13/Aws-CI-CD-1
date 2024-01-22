#!/bin/bash
set -e

# Check if there are running containers
if docker ps &> /dev/null; then
    # Stop the running container
    containerid=$(docker ps -q)
    
    # Check if container ID is not empty
    if [ -n "$containerid" ]; then
        docker rm -f "$containerid"
        echo "Container $containerid stopped and removed."
    else
        echo "No running containers found."
    fi
else
    echo "No running containers found."
fi

