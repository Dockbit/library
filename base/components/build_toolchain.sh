#!/usr/bin/env bash

set -e

# Install build toolchain and compilers
apt-get -qq update && apt-get -qq install -y --no-install-recommends \
  autoconf \
  automake \
  bzip2 \
  file \
  g++ \
  gcc \
  make \
  cmake \
  clang \
  scons \
  patch \
  xz-utils

# Cleanup
rm -rf /var/lib/apt/lists/*

