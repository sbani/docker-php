#!/bin/bash
set -e

# Add php-fpm as command if needed
if [[ "$1" == -* ]]; then
	set -- php-fpm "$@"
fi

logger "Fixing rights in container"
mkdir -p /var/www
chown -R www-data:www-data /var/www /usr/local/bin

# docker-entrypoint-initdb.d, as provided by most official images allows for direct usage and extended images to
# extend behaviour without modifying this file.
for f in /docker-entrypoint-initdb.d/*; do
    case "$f" in
        *.sh)     logger "$0: running $f"; . "$f" ;;
        "/docker-entrypoint-initdb.d/*") ;;
        *)        logger "$0: ignoring $f" ;;
    esac
done

exec "$@"
