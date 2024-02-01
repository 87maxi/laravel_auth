#!/bin/bash
#set -Eeo pipefail
 

mkdir -p /home/www-data/storage/logs;

mkdir -p /home/www-data/storage/framework;

mkdir -p /home/www-data/storage/framework/cache;

mkdir -p /home/www-data/storage/framework/sessions;

mkdir -p /home/www-data/storage/framework/views;

chown 1000:1000 -R /home/www-data/storage;

composer install;

chown 1000:1000 -R /home/www-data/vendor;