#!/usr/bin/env bash

set -e

AWS_CLI_VERSION=1.11.34

# Install
source $HOME/.bash_profile
pyenv shell 2.7.11 && pip install --no-cache-dir --user awscli==$AWS_CLI_VERSION && \
pyenv shell 3.4.4  && pip install --no-cache-dir --user awscli==$AWS_CLI_VERSION

