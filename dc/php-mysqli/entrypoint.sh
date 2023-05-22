#!/bin/bash
set -Eeo pipefail

chown -R www-data:www-data /var/www/html/storage/framework;
chown -R www-data:www-data /var/www/html/storage/logs;

php artisan migrate:refresh;


$@
