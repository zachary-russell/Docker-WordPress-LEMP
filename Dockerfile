FROM php:7.0-fpm

RUN docker-php-ext-install -j$(nproc) mysqli

CMD ["php-fpm"]


