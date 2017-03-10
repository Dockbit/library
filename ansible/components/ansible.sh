#!/usr/bin/env bash

set -e

ANSIBLE_VERSION=2.2.0.0

# Install
source $HOME/.bash_profile
pyenv shell 2.7.11 && pip install --no-cache-dir --user ansible==$ANSIBLE_VERSION && \
pyenv shell 3.4.4  && pip install --no-cache-dir --user ansible==$ANSIBLE_VERSION

