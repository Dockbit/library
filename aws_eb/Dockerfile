FROM dockbit/base:latest
MAINTAINER The Dockbit Team "team@dockbit.com"

# Install AWS EB via pip
WORKDIR /tmp
COPY components/aws_eb.sh .
RUN ./aws_eb.sh

# Cleanup & execution environment
USER root
RUN rm -f aws_eb.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh
USER dockbit
WORKDIR /home/dockbit
ENTRYPOINT ["/docker-entrypoint.sh"]