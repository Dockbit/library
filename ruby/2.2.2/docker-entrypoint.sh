#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Compose a string of which dependencies to track
if [ -f Gemfile ];          then dependencies="-f Gemfile";                     fi
if [ -f .ruby-version ];    then dependencies="$dependencies -f .ruby-version"; fi
# Only append RBENV_VERSION if either a Gemfile or .ruby-version exists (hacher needs at least one file)
if [  -n "$dependencies"  ]; then
  if [ -n "$RBENV_VERSION"  ]; then dependencies="$dependencies -e RBENV_VERSION"; fi
fi

if [ -n "$dependencies" ]; then
  hacher get -k bundle $dependencies
  run bundle install --jobs=3 --retry=3 --deployment
  hacher set -k bundle $dependencies ./vendor/bundle
fi

run_user
