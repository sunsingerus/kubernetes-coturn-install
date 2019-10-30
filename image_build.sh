#!/bin/bash

TAG="${TAG:-sunsingerus/coturn:dev}"
DOCKERHUB_LOGIN="${DOCKERHUB_LOGIN:-sunsingerus}"
DOCKERFILE="Dockerfile"
SRC_ROOT="."

docker build -t "${TAG}" -f "${DOCKERFILE}" "${SRC_ROOT}"
docker login -u "${DOCKERHUB_LOGIN}"
docker push "${TAG}"

