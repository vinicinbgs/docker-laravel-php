<<<<<<< HEAD
FROM php:7.3.6-fpm-alpine3.9
RUN apk add  --no-cache openssl bash mysql-client nodejs npm
=======
FROM vinicinbgs/laravel:latest
RUN apk add  --no-cache openssl bash mysql-client
>>>>>>> d8a811fbeb3404d80606d8617211c149794c2ed8
RUN docker-php-ext-install pdo pdo_mysql

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# COPY . /var/www
# RUN composer install && \
#     cp .env.example .env && \
#     php artisan key:generate && \
#     php artisan migrate

<<<<<<< HEAD
EXPOSE 9000
=======
RUN ln -s public html

EXPOSE 9000

ENTRYPOINT ["php-fpm"]
>>>>>>> d8a811fbeb3404d80606d8617211c149794c2ed8
