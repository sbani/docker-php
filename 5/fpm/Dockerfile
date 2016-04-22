FROM php:5.6-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
		nodejs \
		libicu-dev \
		libmcrypt-dev \
		libpng-dev \
		libxml2-dev \
	--no-install-recommends && rm -r /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install \
	gd \
	intl \
	mbstring \
	mcrypt \
	opcache \
	pdo_mysql \
	soap \
	zip

# Oro php settings
RUN { \
		echo "memory_limit=1024M"; \
		echo "date.timezone=Europe/Berlin"; \
		echo "detect_unicode=off"; \
		echo "xdebug.scream=off"; \
	} > /usr/local/etc/php/conf.d/custom.ini

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

WORKDIR /var/www
VOLUME /var/www
EXPOSE 9000
CMD ["php-fpm"]
