FROM php:7.4-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN a2enmod rewrite

COPY ./hms-master /var/www/html/

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80
