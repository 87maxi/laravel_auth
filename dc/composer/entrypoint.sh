#!/bin/bash
#set -Eeo pipefail




cd /home/www-data;



mkdir -p ./storage/logs;

mkdir -p ./storage/framework;

mkdir -p ./storage/framework/cache;

mkdir -p ./storage/framework/sessions;

mkdir -p ./storage/framework/views;

chown 1000:1000 -R ./storage;

composer install

chown 1000:1000 -R ./vendor;