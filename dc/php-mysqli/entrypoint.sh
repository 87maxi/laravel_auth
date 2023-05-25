#!/bin/bash
set -Eeo pipefail



ls -l

chown -R www-data:www-data storage;


php artisan migrate:refresh;


$@
