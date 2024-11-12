#!/bin/bash
cd /home/ubuntu/eclipse-workspace/www
docker-compose run --rm certbot renew
# docker-compose run --rm certbot renew --force-renewal
