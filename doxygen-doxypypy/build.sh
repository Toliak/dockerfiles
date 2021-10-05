#! /bin/bash

docker build -f Dockerfile . --tag toliak/doxygen-doxypypy:latest
docker tag toliak/doxygen-doxypypy:latest toliak/doxygen-doxypypy:$(cat ./version)

mkdir -p ~/docker
docker save toliak/doxygen-doxypypy:latest toliak/doxygen-doxypypy:$(cat ./version) | gzip > ~/docker/doxygen-doxypypy.tar.gz

ls -la ~/docker
