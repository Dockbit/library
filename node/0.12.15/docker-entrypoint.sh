#!/bin/bash
source /bin/dockbit_bootstrap.sh

# if avn/.node-version isn't involved, load the required version with nvm use
if [ -z "$__avn_active_file" ]; then
  nvm use 0.12.15
fi

# Compose a string of which node dependencies to track
if [ -f package.json ];  then node_dependencies="-f package.json";                     fi
if [ -f .node-version ]; then node_dependencies="$node_dependencies -f .node-version"; fi
if [ -f yarn.lock ];     then node_dependencies="$node_dependencies -f yarn.lock";     fi

if [ -n "$node_dependencies" ]; then
  hacher get -k node_modules $node_dependencies
  [ -f bower.json ] && hacher get -k bower_components -f bower.json

  if [ -f yarn.lock ]; then
    run yarn install
  else
    run npm install
  fi

  if [ -f bower.json ]; then
    run bower install
  fi

  hacher set -k node_modules $node_dependencies ./node_modules
  [ -f bower.json ] && hacher set -k bower_components -f bower.json ./bower_components
fi

run_user
