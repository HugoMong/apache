FROM php:7.4-apache
EXPOSE 80
WORKDIR /var/www/html
RUN a2enmod headers deflate expires rewrite \
 && docker-php-ext-install mysqli \
 && apachectl restart || true
