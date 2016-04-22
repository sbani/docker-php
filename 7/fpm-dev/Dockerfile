FROM banovo/php:7-fpm

# Set environmental variables
ENV COMPOSER_HOME /root/composer
ENV PATH $COMPOSER_HOME/vendor/bin:$PATH

# Install composer
RUN set -xe \
	&& apt-get update && apt-get install -y git --no-install-recommends && rm -r /var/lib/apt/lists/* \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install phpunit
RUN composer global require phpunit/phpunit 4.5.*

# Install phpcs
RUN set -xe \
	&& composer global require squizlabs/php_codesniffer \
	&& composer global require escapestudios/symfony2-coding-standard \
	&& phpcs --config-set installed_paths ~/composer/vendor/escapestudios/symfony2-coding-standard

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

WORKDIR /var/www
VOLUME /var/www
EXPOSE 9000
CMD ["php-fpm"]
