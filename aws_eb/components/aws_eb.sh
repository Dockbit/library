#!/usr/bin/env bash

set -e

AWS_EB_VERSION=3.9.0

# Install
source $HOME/.bash_profile
pyenv shell 2.7.11 && pip install --no-cache-dir --user awsebcli==$AWS_EB_VERSION && \
pyenv shell 3.4.4  && pip install --no-cache-dir --user awsebcli==$AWS_EB_VERSION

