#!/bin/bash

#crontab -e
#0 4 * * * /home/ubuntu/yona-server/certbot/renew.sh
#sudo service cron status
#sudo service cron start
#sudo service cron restart
#sudo chmod +x /home/ubuntu/yona-server/certbot/renew.sh

docker run --rm --name certbot -v '/home/ubuntu/yona-server/certbot/conf:/etc/letsencrypt' -v '/home/ubuntu/yona-server/certbot/logs:/var/log/letsencrypt' -v '/home/ubuntu/yona-server/certbot/data:/var/www/certbot' certbot/certbot renew --server https://acme-v02.api.letsencrypt.org/directory --cert-name example.com --no-random-sleep-on-renew --preferred-challenges http