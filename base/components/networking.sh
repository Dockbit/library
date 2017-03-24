#!/usr/bin/env bash

set -e

# Install networking tools
export DEBIAN_FRONTEND=noninteractive
apt-get -qq update && apt-get -qq install -y --no-install-recommends -o Dpkg::Options::="--force-confold" \
  ca-certificates \
  curl \
  wget \
  rsync \
  openssh-client

# Cleanup
rm -rf /var/lib/apt/lists/*
