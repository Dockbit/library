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

# Check if multiple image names are passed (usually for multiple tags)
# Parse comma-delimited string and construct tagging portion of docker cmd
OIFS=$IFS
IFS=","
for image in $DOCKBIT_DOCKER_IMAGE
do
  export docker_images_names=$docker_images_names" -t $image"
done
IFS=$OIFS

# Parse build-time variables
OIFS=$IFS
IFS=","
for arg in $DOCKBIT_DOCKER_BUILD_ARGUMENTS
do
  export docker_build_args=$docker_build_args" --build-arg $arg"
done
IFS=$OIFS

# Build
if [ -n "${DOCKBIT_DOCKER_DOCKERFILE_PATH}" ]; then
  cd $DOCKBIT_DOCKER_DOCKERFILE_PATH
else
  cd $DOCKBIT_CWD
fi

if [ -n "${DOCKBIT_DOCKER_BUILD_ARGUMENTS}" ]; then
  run docker build $docker_build_args $docker_images_names .
else
  run docker build $docker_images_names .
fi

# Tag & Push
for image in ${DOCKBIT_DOCKER_IMAGE//,/ }
do
  if [ -n "${DOCKBIT_DOCKER_REGISTRY}" ]; then
    run docker tag $image $DOCKBIT_DOCKER_REGISTRY/$image
    run docker push $DOCKBIT_DOCKER_REGISTRY/$image
  else
    run docker push $image
  fi
done
