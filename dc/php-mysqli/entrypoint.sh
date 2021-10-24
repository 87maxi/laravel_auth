#!/usr/bin/env bash

chown -R www-data:www-data /var/www/html/storage/framework;
chown -R www-data:www-data /var/www/html/storage/logs;

php artisan migrate

if [ $? != 0 ] 
then
  echo "<<<<ERROR>>>>"
  exit 1
else
    php-fpm
fi