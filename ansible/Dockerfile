FROM dockbit/base:latest
MAINTAINER The Dockbit Team "team@dockbit.com"

# Install Ansible via pip
WORKDIR /tmp
COPY components/ansible.sh ./
RUN ./ansible.sh

# Cleanup & execution environment
USER root
RUN rm -f ansible.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh
USER dockbit
WORKDIR /home/dockbit
ENTRYPOINT ["/docker-entrypoint.sh"]