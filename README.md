### :whale: DOCKER HUB

Versão v2 em https://hub.docker.com/repository/docker/vinicinbgs/laravel

### :pencil: Comandos
<pre>
    cd docker-laravel-php
    docker-composer up -d --build
    
    docker exec -it app bash
    composer install
    cp .env.example .env
    php artisan key:generate
    php artisan migration
</pre>
