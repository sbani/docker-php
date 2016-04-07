FROM banovo/php:5-fpm

# Set environmental variables
ENV COMPOSER_HOME /root/composer

# Install php binaries
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
	&& php -d memory_limit=-1 /usr/local/bin/composer global require phpunit/phpunit 4.5.*

WORKDIR /var/www/html
EXPOSE  9000
CMD     ["php-fpm"]

