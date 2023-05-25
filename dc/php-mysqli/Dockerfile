FROM php:8.2.0-fpm-alpine3.17

RUN apk add --no-cache mysql-client msmtp perl wget procps shadow libzip libpng libjpeg-turbo libwebp freetype icu

RUN apk add --no-cache --virtual build-essentials \
    icu-dev icu-libs zlib-dev g++ make automake autoconf libzip-dev \
    libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev 


    
RUN apk add --no-cache --update \
  bzip2-dev \
  enchant2-dev \
  gmp-dev \
  imap-dev \
  openldap-dev \
  freetds-dev \
  postgresql-dev \
  aspell-dev \
  net-snmp-dev \
  libxml2-dev \
  tidyhtml-dev  \
  libxslt-dev       
    
RUN   docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install gd && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install intl && \
    docker-php-ext-install opcache && \
    docker-php-ext-install exif && \
    docker-php-ext-install zip 

RUN docker-php-ext-install \
  bcmath \
  bz2 \
  calendar \
  dba \
  enchant \  
  ffi \
  gettext \
  gmp \
  imap \
  ldap \
  pcntl \
  pdo_dblib \
  pdo_pgsql \
  pgsql \
  pspell \
  shmop \
  snmp \
  soap \
  sockets \
  sysvmsg \
  sysvsem \
  sysvshm \
  tidy \
  xsl \
  zend_test
      
ARG uid=1000
ARG gid=1000


RUN apk del build-essentials && rm -rf /usr/src/php*

COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "sh", "/entrypoint.sh" ]



CMD ["php-fpm" ]