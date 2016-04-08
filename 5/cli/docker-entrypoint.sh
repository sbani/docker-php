#!/bin/bash
set -e

# Add php-fpm as command if needed
if [[ "$1" == -* ]]; then
	set -- php-fpm "$@"
fi

echo 'PHP init process starting ...'

mkdir -p /var/www /usr/local/bin
chown -R www-data:www-data /var/www /usr/local/bin

echo
echo 'PHP init process done. Ready for start up.'
echo

exec "$@"
