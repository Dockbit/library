FROM dockbit/base:latest
MAINTAINER The Dockbit Team "team@dockbit.com"

# Install Snyk via NPM
WORKDIR /tmp
COPY components/snyk.sh .
RUN ./snyk.sh

# Cleanup & execution environment
USER root
RUN rm -f snyk.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh
USER dockbit
WORKDIR /home/dockbit
ENTRYPOINT ["/docker-entrypoint.sh"]