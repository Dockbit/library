#!/usr/bin/env bash

set -e

SNYK_VERSION=1.22.1

# Install
source $HOME/.bash_profile
nvm use 0.10.46 && npm --quiet install -g snyk@${SNYK_VERSION}
nvm use 0.12.15 && npm --quiet install -g snyk@${SNYK_VERSION}
nvm use 5.12.0  && npm --quiet install -g snyk@${SNYK_VERSION}
nvm use 6.5.0   && npm --quiet install -g snyk@${SNYK_VERSION}
nvm use 6.8.0   && npm --quiet install -g snyk@${SNYK_VERSION}
