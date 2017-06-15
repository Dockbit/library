FROM dockbit/base:latest
MAINTAINER The Dockbit Team "team@dockbit.com"

# Docker
USER root
WORKDIR /tmp
COPY components/docker.sh .
RUN ./docker.sh && rm -f docker.sh

# Execution environment
COPY docker-entrypoint.sh /docker-entrypoint.sh
USER dockbit
WORKDIR /home/dockbit
ENTRYPOINT ["/docker-entrypoint.sh"]
