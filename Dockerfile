FROM php:apache

RUN apt-get update \
  && apt-get install --yes --no-install-recommends libpq-dev zlib1g-dev libpng-dev \
  && docker-php-ext-install pdo_pgsql pdo_mysql gd
