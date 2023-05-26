FROM php:8.2-cli-alpine3.18

RUN apk update
RUN apk add bash
RUN apk add curl

# INSTALL COMPOSER
RUN curl -s https://getcomposer.org/installer | php
RUN alias composer='php composer.phar'

RUN mv composer.phar /usr/local/bin/composer


COPY entrypoint.sh   / 

RUN chmod 775 /entrypoint.sh



WORKDIR /home/www-data


ENTRYPOINT [ "/entrypoint.sh" ]











