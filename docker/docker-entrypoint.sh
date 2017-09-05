#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Docker Authentication
if [ -n "${DOCKBIT_DOCKER_REGISTRY}" ]; then
  echo -e "\$ \e[32mLogging into the Docker registry at $DOCKBIT_DOCKER_REGISTRY\e[0m"
  docker login $DOCKBIT_DOCKER_REGISTRY --username $DOCKBIT_DOCKER_REGISTRY_USERNAME --password $DOCKBIT_DOCKER_REGISTRY_PASSWORD
else
  echo -e "\$ \e[32mLogging into the Docker Hub\e[0m"
  docker login --username $DOCKBIT_DOCKER_REGISTRY_USERNAME --password $DOCKBIT_DOCKER_REGISTRY_PASSWORD
fi

# Build
if [ -n "${DOCKBIT_DOCKER_DOCKERFILE_PATH}" ]; then
  cd $DOCKBIT_DOCKER_DOCKERFILE_PATH
else
  cd $DOCKBIT_CWD
fi

run docker build -t $DOCKBIT_DOCKER_IMAGE .

# Tag & Push
if [ -n "${DOCKBIT_DOCKER_REGISTRY}" ]; then
  run docker tag $DOCKBIT_DOCKER_IMAGE $DOCKBIT_DOCKER_REGISTRY/$DOCKBIT_DOCKER_IMAGE
  run docker push $DOCKBIT_DOCKER_REGISTRY/$DOCKBIT_DOCKER_IMAGE
else
  run docker push $DOCKBIT_DOCKER_IMAGE
fi
