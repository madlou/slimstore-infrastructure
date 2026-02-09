#!/bin/bash
cd /home/ubuntu/dev/slimstore-infrastructure/prod/
COMPOSE_PROJECT_NAME=slimstore-prod docker-compose down
docker-compose -f docker-compose-certbot.yaml up
COMPOSE_PROJECT_NAME=slimstore-prod docker-compose up -d

# force cert renewal
# docker-compose run --rm certbot renew --force-renewal

# crontabs
# 0 0 * * * date +"%Y-%m-%d %H:%M:%S" >> /home/ubuntu/dev/slimstore-infrastructure/renew-certs.log
# 1 0 * * * /home/ubuntu/dev/slimstore-infrastructure/renew-certs.sh >> /home/ubuntu/dev/slimstore-infrastructure/renew-certs.log
