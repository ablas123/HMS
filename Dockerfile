FROM php:7.4-apache

# تثبيت mysqli وتمكينه
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# تثبيت حزم الشهادات لـ TLS
RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates

# تمكين mod_rewrite
RUN a2enmod rewrite

# نسخ مجلد المشروع بالكامل
COPY ./hms-master /var/www/html/

# تعيين الصلاحيات
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80
