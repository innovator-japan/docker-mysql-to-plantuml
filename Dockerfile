FROM php:7.3-alpine3.9

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html
USER www-data
RUN composer create-project hywan/database-to-plantuml ./ \
  && composer clear-cache \
  && rm -rf .git resource

ENTRYPOINT ["bin/database-to-plantuml"]
