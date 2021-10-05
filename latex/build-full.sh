#! /bin/bash

docker build -f Dockerfile.full . --tag toliak/latex:full
docker tag toliak/latex:full toliak/latex:$(cat ./version)-full

mkdir -p ~docker
docker save toliak/latex:full toliak/latex:$(cat ./version)-full | gzip > ~/docker/latex-full.tar.gz
