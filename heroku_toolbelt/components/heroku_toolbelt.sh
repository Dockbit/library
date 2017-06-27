#!/usr/bin/env bash

set -e

export HEROKU_TOOLBELT_VERSION=3.43.16

# Install as a gem and trigger initialization
source $HOME/.bash_profile
gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.1.7 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.1.8 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.2.2 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.2.3 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.2.4 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.3.0 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.3.1 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.3.2 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.3.4 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
rbenv shell 2.4.0 \
  && gem install heroku -v ${HEROKU_TOOLBELT_VERSION} && heroku version
