#!/bin/bash
#set -Eeo pipefail

php artisan cache:clear
chmod -R 777 storage/


php artisan migrate:refresh;


$@
