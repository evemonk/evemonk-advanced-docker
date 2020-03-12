#! /bin/bash

set -eux

docker-compose pull
docker-compose down
systemctl stop docker
systemctl start docker
docker-compose up -d

