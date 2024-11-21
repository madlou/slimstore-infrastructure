#!/bin/bash
cd ../slimstore-frontend
./build.sh
cd ../slimstore-backend
./build.sh
cd ../www
docker compose down && docker compose up -d

