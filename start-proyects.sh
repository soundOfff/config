#!/bin/sh

# Read the projectPath parameter from the command line or give a default
projectPath="$1"

# Set a default value if projectPath is empty
if [ -z "$projectPath" ]; then
    projectPath="Desktop/docker-compose-lamp"
fi

docker stop $(docker ps -aq)
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd "$projectPath"
docker compose up -d
docker exec -it 58f565953152 bash
