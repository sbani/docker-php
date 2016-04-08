#!/bin/bash
set -eo pipefail

echo 'PHP init process starting ...'

mkdir -p /var/www /usr/local/bin
chown -R www-data:www-data /var/www /usr/local/bin

echo
echo 'PHP init process done. Ready for start up.'
echo

exec "$@"
