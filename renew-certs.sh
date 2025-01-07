#!/bin/bash
cd /home/ubuntu/dev/slimstore-infrastructure/ 
docker-compose run --rm certbot renew

# force cert renewal
# docker-compose run --rm certbot renew --force-renewal

# crontabs
# 0 0 * * * date +"%Y-%m-%d %H:%M:%S" >> /home/ubuntu/dev/slimstore-infrastructure/renew-certs.log
# 1 0 * * * /home/ubuntu/dev/slimstore-infrastructure/renew-certs.sh >> /home/ubuntu/dev/slimstore-infrastructure/renew-certs.log
