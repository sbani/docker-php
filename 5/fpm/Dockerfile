FROM php:5-fpm-alpine

# Install dependencies
RUN apk add --no-cache --virtual .runtime-deps \
	nodejs

# Install extensions
RUN set -xe \
	&& apk add --no-cache --virtual .extension-deps \
		icu-libs \
		libmcrypt-dev \
		libpng-dev \
		libxml2-dev \
	\
	&& docker-php-ext-install \
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
EXPOSE 9000
CMD ["php-fpm"]
