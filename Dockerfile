FROM php:7.4-apache

# تثبيت mysqli و pdo_mysql
RUN docker-php-ext-install mysqli pdo_mysql && docker-php-ext-enable mysqli pdo_mysql

# تثبيت حزم الشهادات
RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates

RUN a2enmod rewrite

COPY ./hms-master /var/www/html/

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80
