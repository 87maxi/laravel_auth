FROM php:8-fpm
    
RUN apt-get update 
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
    libzip-dev

RUN  docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl

RUN  docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install  gd

RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql


COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]


