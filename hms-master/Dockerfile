FROM php:7.4-apache

# تثبيت ملحقات PHP المطلوبة
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# تمكين mod_rewrite في Apache
RUN a2enmod rewrite

# نسخ جميع ملفات المشروع إلى مجلد الخادم
COPY . /var/www/html/

# تعيين الصلاحيات
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# استخدام ملف .htaccess من المشروع (إذا كان موجوداً)
RUN echo 'Options -MultiViews' >> /etc/apache2/apache2.conf

EXPOSE 80
