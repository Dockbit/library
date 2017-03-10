#!/usr/bin/env bash

set -e

apt-get -qq update && apt-get -qq install -y --no-install-recommends git-core

# Cleanup
rm -rf /var/lib/apt/lists/*

