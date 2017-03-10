#!/bin/bash
source /bin/dockbit_bootstrap.sh

if [ -f composer.json ]; then
  hacher get -k composer -f composer.json
  run composer install
  hacher set -k composer -f composer.json ./vendor/composer
fi

run_user
