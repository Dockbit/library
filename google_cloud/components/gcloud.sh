#!/usr/bin/env bash

set -e

# Install Google Cloud SDK
export DEBIAN_FRONTEND=noninteractive
export CLOUD_SDK_REPO="cloud-sdk-xenial"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-get update && apt-get -qq update && apt-get -qq install -y --no-install-recommends -o Dpkg::Options::="--force-confold" \
 google-cloud-sdk \
 kubectl

# Cleanup
rm -rf /var/lib/apt/lists/*
