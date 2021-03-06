FROM ubuntu:xenial-20170119
MAINTAINER The Dockbit Team "team@dockbit.com"

# Run system-level commands as root
USER root

# Copy scripts in /tmp as workdir
WORKDIR /tmp

# Dockbit configuration
COPY components/config.sh .
RUN ./config.sh && rm -f config.sh
COPY components/bootstrap.sh /tmp/dockbit_bootstrap.sh
RUN if [ ! -f /bin/dockbit_bootstrap.sh ]; then \
      cp /tmp/dockbit_bootstrap.sh /bin/dockbit_bootstrap.sh; \
    fi && \
    rm -f /tmp/dockbit_bootstrap.sh

# Data volume
RUN mkdir -p /dockbit && \
    chown dockbit.dockbit /dockbit
VOLUME /dockbit

# Version control
COPY components/git.sh .
RUN ./git.sh && rm -f git.sh

# Hacher
COPY components/hacher.sh ./
COPY components/hacher /bin/hacher
RUN ./hacher.sh && rm -f hacher.sh

# Build toolchain
COPY components/build_toolchain.sh .
RUN ./build_toolchain.sh && rm -f build_toolchain.sh

# Build Locales
COPY components/locales.sh .
RUN ./locales.sh && rm -f locales.sh

# Libraries
COPY components/libraries.sh .
RUN ./libraries.sh && rm -f libraries.sh

# Networking tools
COPY components/networking.sh .
RUN ./networking.sh && rm -f networking.sh

# Miscellaneous software
COPY components/misc.sh .
RUN ./misc.sh && rm -f misc.sh

# PHP
COPY components/php.sh .
RUN ./php.sh && rm -f php.sh

# Java
COPY components/java.sh .
RUN ./java.sh && rm -f java.sh

USER dockbit

# NodeJS
COPY components/nodejs.sh .
RUN ./nodejs.sh

# Ruby
COPY components/ruby.sh .
RUN ./ruby.sh

# Python
COPY components/python.sh .
RUN ./python.sh

# Erlang
COPY components/erlang.sh .
RUN ./erlang.sh

# Elixir
COPY components/elixir.sh .
RUN ./elixir.sh

# Cleanup
USER root
RUN rm -f nodejs.sh ruby.sh python.sh erlang.sh elixir.sh

# Pipeline command execution environment
USER dockbit
WORKDIR /home/dockbit
