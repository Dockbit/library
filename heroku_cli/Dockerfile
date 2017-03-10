FROM dockbit/base:latest
MAINTAINER The Dockbit Team "team@dockbit.com"

# Heroku CLI
USER root
WORKDIR /tmp
COPY components/heroku_cli.sh .
RUN ./heroku_cli.sh && rm -f heroku_cli.sh

# Execution environment
COPY docker-entrypoint.sh /docker-entrypoint.sh
USER dockbit
WORKDIR /home/dockbit
ENTRYPOINT ["/docker-entrypoint.sh"]