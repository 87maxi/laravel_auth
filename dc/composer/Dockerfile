FROM php:8.2-cli-alpine3.18

RUN apk update
RUN apk add bash
RUN apk add curl

# INSTALL COMPOSER
RUN curl https://getcomposer.org/installer > /composer.php

RUN php composer.php
RUN chmod 777 /composer.phar
RUN mv /composer.phar /usr/local/bin/composer 

COPY entrypoint.sh /

RUN  chmod +x entrypoint.sh

WORKDIR /home/www-data

ENTRYPOINT [ "sh", "/entrypoint.sh" ]

















