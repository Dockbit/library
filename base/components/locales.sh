#!/usr/bin/env bash

set -e

# Configure locales
apt-get -qq update && apt-get -qq install -y locales
echo "en_US UTF-8" > /etc/locale.gen
locale-gen en_US.UTF-8
echo 'export LANG=en_US.UTF-8' >> /home/dockbit/.bash_profile
echo 'export LANGUAGE=en_US:en' >> /home/dockbit/.bash_profile
echo 'export LC_ALL=en_US.UTF-8' >> /home/dockbit/.bash_profile

# Cleanup
rm -rf /var/lib/apt/lists/*
