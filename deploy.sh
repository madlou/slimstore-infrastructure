#!/bin/bash
if [ -z $1 ]
then
    echo "Please specify \"prod\" or \"dev\"" 
    exit 1
else
    date +"%Y-%m-%d %H:%M:%S" >> deploy.log
    echo "Deployed $1" >> deploy.log
    COMPOSE_PROJECT_NAME=slimstore-$1 docker compose -f $1/docker-compose.yaml build
    COMPOSE_PROJECT_NAME=slimstore-$1 docker compose -f $1/docker-compose.yaml down
    COMPOSE_PROJECT_NAME=slimstore-$1 docker compose -f $1/docker-compose.yaml up -d --no-build
fi
