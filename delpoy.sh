#!/bin/bash
COMPOSE_PROJECT_NAME=slimstore docker compose down
COMPOSE_PROJECT_NAME=slimstore docker compose up -d