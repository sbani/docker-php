# docker-php: PHP Images
Generic images for PHP. The extensions satisfy [Bolt](https://github.com/bolt/bolt) and [OroCRM](https://github.com/orocrm/platform), but also most of the other php and [Symfony](https://symfony.com/) projects.

[![Build Status](https://travis-ci.org/banovo/docker-php.svg?branch=master)](https://travis-ci.org/banovo/docker-php)

## Production Images
These Images are meant for production environments and include all needed extensions.

### Supported tags and respective `Dockerfile` links
- [`5` (5/fpm/DockerFile)](https://github.com/banovo/docker-php/blob/master/5/fpm/Dockerfile)
- [`7` (7/fpm/DockerFile)](https://github.com/banovo/docker-php/blob/master/7/fpm/Dockerfile)

## Development Images
These images are based on the production images, but include some development tools like phpunit, composer, ....
You can use them for your CI Server and local development.

### Supported tags and respective `Dockerfile` links
- [`5-dev` (5/fpm-dev/DockerFile)](https://github.com/banovo/docker-php/blob/master/5/fpm/Dockerfile)
- [`7-dev` (7/fpm-dev/DockerFile)](https://github.com/banovo/docker-php/blob/master/7/fpm/Dockerfile)
