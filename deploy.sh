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
if [ $1 = "dev" ]
then
    cd ..
    if [ ! -e "slimstore-backend" ]
    then
        git clone git@github.com:madlou/slimstore-backend.git slimstore-backend
    else
        cd slimstore-backend
        git pull
        cd ..
    fi
    if [ ! -e "slimstore-frontend" ]
    then
        git clone git@github.com:madlou/slimstore-frontend.git slimstore-frontend
        cd slimstore-frontend
        npm install
        cd ..
    else
        cd slimstore-frontend
        git pull
        cd ..
    fi
    if [ ! -e "slimstore-customerdisplay" ]
    then
        git clone git@github.com:madlou/slimstore-customerdisplay.git slimstore-customerdisplay
        cd slimstore-customerdisplay
        npm install
        cd ..
    else
        cd slimstore-customerdisplay
        git pull
        cd ..
    fi
    cd slimstore-infrastructure
    echo "*********"
    echo "Open backend in Eclipse and run in IDE."
    echo "Open frontend in VS Code and run in IDE."
    echo "Open customerdisplay in VS Code and run in IDE."
    echo "*********"
fi