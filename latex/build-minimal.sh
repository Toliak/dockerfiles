#! /bin/bash

docker build -f Dockerfile.minimal . --tag toliak/latex:minimal
docker tag toliak/latex:minimal toliak/latex:$(cat ./version)-minimal

mkdir -p ~/docker
docker save toliak/latex:minimal toliak/latex:$(cat ./version)-minimal | gzip > ~/docker/latex-minimal.tar.gz
