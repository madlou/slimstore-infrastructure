#!/bin/bash
cd /home/ubuntu/eclipse-workspace/www
docker-compose run --rm certbot renew

# force cert renewal
# docker-compose run --rm certbot renew --force-renewal

# crontabs
# 0 0 * * * date >> /home/ubuntu/dev/slimstore-infrastructure/renew-certs.log
# 1 0 * * * /home/ubuntu/dev/slimstore-infrastructure/renew-certs.sh >> /home/ubuntu/dev/slimstore-infrastructure/renew-certs.log