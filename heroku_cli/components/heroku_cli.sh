#!/usr/bin/env bash

set -e

# Install Standalone version
wget --quiet https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz -P /tmp/
tar xvf heroku-linux-amd64.tar.gz heroku/bin/heroku
mv heroku/bin/heroku /usr/local/bin/heroku

# Initialize
/usr/local/bin/heroku version

# Cleanup
rm -fr /tmp/heroku-linux-amd64.tar.gz heroku
