#! /bin/bash

set -eux

docker-compose down --remove-orphans

git stash
git pull
git stash pop

docker-compose pull
systemctl stop docker
systemctl start docker
docker-compose up -d

docker system prune --all --force

