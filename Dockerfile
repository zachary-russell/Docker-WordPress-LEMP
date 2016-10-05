FROM php:7.0-fpm

RUN docker-php-ext-install -j$(nproc) mysqli sockets

RUN mkdir /run/php

RUN sed -i -e 's/127.0.0.1:9000/\/run\/php\/php7.0-fpm.sock/g' /usr/local/etc/php-fpm.d/www.conf
RUN sed -i -e 's/\[::\]:9000/\/run\/php\/php7.0-fpm.sock/g' /usr/local/etc/php-fpm.d/zz-docker.conf
CMD ["php-fpm"]


