#!/bin/bash
#set -Eeo pipefail

cd /app;

mkdir storage/cache;

uid=1000
gid=1000

chown -R ${uid}:${gid} /var/www/html/storage/cache;


php -v;

ls -l storage/;

composer install;
