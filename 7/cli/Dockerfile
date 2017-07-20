FROM php:7.1-cli

ENV NODEREPO node_4.x

# Install dependencies
# apt-get update is called during the nodejs install script
# See https://deb.nodesource.com/setup
RUN set -xe \
	\
	# Add nodejs repo (jessie is coming from php) and deps to it
	&& apt-get update && apt-get install -y apt-transport-https --no-install-recommends \
	&& php -r "echo file_get_contents('https://deb.nodesource.com/gpgkey/nodesource.gpg.key');" | apt-key add - \
	&& echo "deb https://deb.nodesource.com/${NODEREPO} jessie main" > /etc/apt/sources.list.d/nodesource.list \
	&& echo "deb-src https://deb.nodesource.com/${NODEREPO} jessie main" >> /etc/apt/sources.list.d/nodesource.list \
	\
	# Install deps
	&& apt-get update && apt-get install -y \
		libicu-dev \
		zlib1g-dev \
		libmcrypt-dev \
		libpng-dev \
		libxml2-dev \
		libicu52 \
		zlib1g \
		nodejs \
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

RUN pecl install \
		apcu-5.1.7 \
	&& docker-php-ext-enable --ini-name 05-opcache.ini \
		opcache \
	&& docker-php-ext-enable --ini-name 20-apcu.ini \
		apcu

# Oro php settings
RUN { \
		echo "memory_limit=1024M"; \
		echo "date.timezone=Europe/Berlin"; \
		echo "detect_unicode=off"; \
		echo "xdebug.scream=off"; \
	} > /usr/local/etc/php/conf.d/custom.ini

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["php", "-a"]
