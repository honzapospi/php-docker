FROM php:7-apache
RUN apt-get update
RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev g++ \
  && apt-get install -y git \
  && a2enmod rewrite \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl \
  && apt-get install -y \
          libfreetype6-dev \
          libjpeg62-turbo-dev \
      && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
      && docker-php-ext-install -j$(nproc) gd
# mysql pdo
RUN docker-php-ext-install pdo pdo_mysql
COPY env/php.ini /usr/local/etc/php
# set new created file to have full access permissions
RUN echo "umask 000" >> /etc/apache2/envvars
