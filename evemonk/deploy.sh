#! /bin/bash

set -eux

git stash
git pull
git stash pop

docker-compose pull
docker-compose down
systemctl stop docker
systemctl start docker
docker-compose up -d

docker system prune --all

