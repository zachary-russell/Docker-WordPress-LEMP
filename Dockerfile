FROM php:7.0-fpm

RUN docker-php-ext-install -j$(nproc) mysqli sockets

RUN mkdir /run/php

CMD ["php-fpm"]


