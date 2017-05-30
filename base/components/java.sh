#!/usr/bin/env bash

set -e

JAVA_VERSION=8u131-b11-0ubuntu1.16.04.2
CA_CERTIFICATES_JAVA_VERSION=20160321

# Install
apt-get -qq update && apt-get -qq install -y --no-install-recommends \
  openjdk-8-jre-headless=${JAVA_VERSION} \
  ca-certificates-java=${CA_CERTIFICATES_JAVA_VERSION}

# see https://bugs.debian.org/775775
# and https://github.com/docker-library/java/issues/19#issuecomment-70546872
/var/lib/dpkg/info/ca-certificates-java.postinst configure

# Cleanup
rm -rf /var/lib/apt/lists/*
