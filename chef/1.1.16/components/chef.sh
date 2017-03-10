#!/usr/bin/env bash

set -e

CHANNEL=stable
CHEFDK_VERSION=1.1.16
DEBIAN_FRONTEND=noninteractive

echo 'export PATH=$PATH:/opt/chefdk/bin:/opt/chefdk/embedded/bin' >> /home/dockbit/.bash_profile

# Download Omnibus package
wget --quiet --content-disposition "https://omnitruck.chef.io/${CHANNEL}/chefdk/download?p=ubuntu&pv=16.04&m=x86_64&v=${CHEFDK_VERSION}" -O /tmp/chefdk.deb && \
dpkg -i /tmp/chefdk.deb

# Cleanup
rm -rf /var/lib/apt/lists/* /tmp/chefdk.deb /var/tmp/*
