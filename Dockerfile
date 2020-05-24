FROM vinicinbgs/laravel:v3
RUN apk add bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./laravel/composer.json /var/www/composer.json
COPY ./laravel/composer.lock /var/www/composer.lock

RUN composer update

RUN ln -s public html

EXPOSE 9000

ENTRYPOINT ["php-fpm"]