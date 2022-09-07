FROM php:8-fpm

RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    unzip \
    #git \
    curl \
    libonig-dev \
    libzip-dev \
    iputils-ping


RUN  docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl

RUN  docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install  gd

RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql


ARG uid=1000
ARG gid=1000




COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]
USER ${uid}:${gid}

#RUN groupadd -r www-data && useradd -r -g user www-data

CMD ["php-fpm" ]

