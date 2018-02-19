FROM php:5.6-apache
RUN apt-get update \
  && apt-get install -y libpng-dev zlib1g-dev libicu-dev g++ \
  && a2enmod rewrite \
  && docker-php-ext-configure intl \
  && docker-php-ext-install mysqli pdo_mysql intl \
  && docker-php-ext-install -j$(nproc) gd
COPY env/php.ini /usr/local/etc/php
# set new created file to have full access permissions
RUN echo "umask 000" >> /etc/apache2/envvars
