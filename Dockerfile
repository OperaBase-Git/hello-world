FROM php:7-fpm

RUN apt-get update && apt-get install -y \
    netcat-openbsd \
    mariadb-client \
    curl \
    zip \
    unzip  \
    && rm -r /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version
