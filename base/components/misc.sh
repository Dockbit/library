#!/usr/bin/env bash

set -e

# Miscellaneous software
apt-get -qq update && apt-get -qq install -y --no-install-recommends \
  coreutils \
  jq \
  unzip \
  tar \
  groff

# Remove several traces of debian python
apt-get -qq update && apt-get -qq purge -y python.*

# Cleanup
rm -rf /var/lib/apt/lists/*
