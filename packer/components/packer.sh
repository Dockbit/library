#!/usr/bin/env bash

set -e

PACKER_VERSION=0.12.3

# Install
wget --quiet https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip -P /tmp/
unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/local/bin

# Cleanup
rm -f /tmp/packer_${PACKER_VERSION}_linux_amd64.zip
