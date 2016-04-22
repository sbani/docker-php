# docker-php: PHP Images
Generic images for PHP. The extensions satisfy [Bolt](https://github.com/bolt/bolt) and [OroCRM](https://github.com/orocrm/platform), but also most of the other php projects

[![Build Status](https://travis-ci.org/banovo/docker-php.svg?branch=master)](https://travis-ci.org/banovo/docker-php) [![](https://img.shields.io/badge/ImageLayers.io-compare%20all-blue.svg)](https://imagelayers.io/?images=banovo%2Fphp:5,banovo%2Fphp:7,banovo%2Fphp:5-fpm,banovo%2Fphp:7-fpm,banovo%2Fphp:5-dev,banovo%2Fphp:7-dev,banovo%2Fphp:5-fpm-dev,banovo%2Fphp:7-fpm-dev)

## Production Images
These Images are meant for production environments and include all needed extensions.

Base Image  | PHP Version | Tags         | Layer
-------------|-------------|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------
| php:5.6-cli | 5.6         | `5`, `5-cli` | [![](https://badge.imagelayers.io/banovo/php:5.svg)](https://imagelayers.io/?images=banovo/php:5)     |
| php:7-cli   | 7           | `7`, `7-cli` | [![](https://badge.imagelayers.io/banovo/php:7.svg)](https://imagelayers.io/?images=banovo/php:7)     |
| php:5.6-fpm | 5.6         | `5-fpm`      | [![](https://badge.imagelayers.io/banovo/php:5-fpm.svg)](https://imagelayers.io/?images=banovo/php:5-fpm) |
| php:7-fpm   | 7           | `7-fpm`      | [![](https://badge.imagelayers.io/banovo/php:7-fpm.svg)](https://imagelayers.io/?images=banovo/php:7-fpm) |

## Development Images
These images are based on the production images, but include some development tools like phpunit, composer and phpcs. You can use them for your CI Server and local development.

Base Image  | PHP Version | Tags         | Layer
|-------------|-------------|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| banovo/php:5 | 5.6         | `5-dev` | [![](https://badge.imagelayers.io/banovo/php:5-dev.svg)](https://imagelayers.io/?images=banovo/php:5-dev)     |
| banovo/php:7   | 7           | `7-dev` | [![](https://badge.imagelayers.io/banovo/php:7-dev.svg)](https://imagelayers.io/?images=banovo/php:7-dev)     |
| banovo/php:5-fpm | 5.6         | `5-fpm-dev`      | [![](https://badge.imagelayers.io/banovo/php:5-fpm-dev.svg)](https://imagelayers.io/?images=banovo/php:5-fpm-dev) |
| banovo/php:7-fpm   | 7           | `7-fpm-dev`      | [![](https://badge.imagelayers.io/banovo/php:7-fpm-dev.svg)](https://imagelayers.io/?images=banovo/php:7-fpm-dev) |
