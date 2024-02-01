#!/bin/sh
#set -Eeo pipefail
cd /var/www/html;
php artisan  migrate:refresh ;

php-fpm;
