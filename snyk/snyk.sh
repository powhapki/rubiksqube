#!/bin/bash
# https://github.com/snyk/snyk
# https://hub.docker.com/r/snyk/snyk-cli
# https://github.com/snyk/docker-goof
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes
rm -rf docker-goof
git clone https://github.com/snyk/docker-goof.git
cd docker-goof
sudo bash -x ./build.sh
sudo bash -x ./test.sh
rm -rf docker-goof
