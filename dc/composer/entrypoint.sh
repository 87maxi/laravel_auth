#!/bin/bash
#set -Eeo pipefail

cd /app;
mkdir storage;
cd storage;
mkdir logs;
mkdir framework;
mkdir -p framework/cache 
mkdir -p framework/cache/data;
mkdir -p framework/sessions;
mkdir -p framework/testing;
mkdir -p framework/views;

cd .. ;
chown -R  www-data:www-data storage;


php -v;

ls -la ${PWD}

composer install;
