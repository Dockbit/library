#!/usr/bin/env bash

set -e

# Install
curl --silent -Ls https://convox.com/install/linux.zip > /tmp/convox.zip
unzip /tmp/convox.zip -d /usr/local/bin

# Cleanup
rm -rf /tmp/convox.zip
