FROM banovo/php:5

# Set environmental variables
ENV COMPOSER_HOME /root/composer

# Install php binaries
RUN set -xe \
	&& apt-get update && apt-get install -y git --no-install-recommends && rm -r /var/lib/apt/lists/* \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
	&& php -d memory_limit=-1 /usr/local/bin/composer global require phpunit/phpunit 4.5.*

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["php", "-a"]
