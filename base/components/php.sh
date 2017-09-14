#!/usr/bin/env bash

set -e

PHP_VERSION=7.0.22-0ubuntu0.16.04.1
COMPOSER_VERSION=1.2.1

# PHP
apt-get -qq update && apt-get -qq install -y --no-install-recommends \
  php7.0-cli=${PHP_VERSION} \
  php-pear

# Composer
curl --silent -sS https://getcomposer.org/installer | php -- --version=${COMPOSER_VERSION} --install-dir=/usr/local/bin --filename=composer
echo 'export COMPOSER_VENDOR_DIR=vendor/composer' >> $HOME/.bash_profile
echo 'export PATH=$DOCKBIT_CWD/vendor/composer/bin:$PATH' >> $HOME/.bash_profile

# Cleanup
rm -rf /var/lib/apt/lists/*
