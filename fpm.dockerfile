FROM php:7.1-fpm

COPY ./etc/php/php.ini /usr/local/etc/php/

RUN apt-get update -y && \
    apt-get install -y \
    libmcrypt-dev \
    sqlite \
    libsqlite3-0 \
    libsqlite3-dev \
    openssl \
    libssl-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure opcache --enable-opcache \
    && docker-php-ext-install mysqli mbstring pdo_mysql pdo_sqlite mcrypt ftp gd zip opcache

# Enable and configure redis
RUN pecl install redis
RUN docker-php-ext-enable redis
