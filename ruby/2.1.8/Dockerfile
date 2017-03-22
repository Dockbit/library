FROM dockbit/base:latest
MAINTAINER The Dockbit Team "team@dockbit.com"

RUN . $HOME/.bash_profile \
 && rbenv global 2.1.8

# Execution environment
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
