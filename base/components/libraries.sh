#!/usr/bin/env bash

set -e

# Install essential libraries
apt-get -qq update && apt-get -qq install -y --no-install-recommends \
  imagemagick \
  libmagickcore-dev \
  openssl \
  zlib1g-dev \
  libicu-dev \
  libbz2-dev \
  libc6-dev \
  libcurl4-openssl-dev \
  libdb-dev \
  libevent-dev \
  libffi-dev \
  libgdbm-dev \
  libgeoip-dev \
  libglib2.0-dev \
  libjpeg-dev \
  libkrb5-dev \
  liblzma-dev \
  libmagickwand-dev \
  libmysqlclient-dev \
  libncurses-dev \
  libpng-dev \
  libpq-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libtool \
  libwebp-dev \
  libxml2-dev \
  libxslt-dev \
  libyaml-dev

# Cleanup
rm -rf /var/lib/apt/lists/*

