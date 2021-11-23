#!/bin/bash

sudo rm -rf ./* ./.*
docker system prune --volumes
(cd ~/work/opensource/gems/workbench_roro/roro && docker-compose build)

sudo docker run \
-v $PWD:/home/schadenfred \
-v /var/run/docker.sock:/var/run/docker.sock \
-u 0 \
-it roar:latest roro rollon

