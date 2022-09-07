#!/bin/bash
#set -Eeo pipefail

chown -R ${uid}:${gid} /var/www/html/storage/framework;
chown -R ${uid}:${gid} /var/www/html/storage/logs;

php artisan migrate;


$@
