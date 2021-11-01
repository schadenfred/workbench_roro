#!/bin/bash

(
  cd roro &&
  rvm install 3.0.2 &&
  rvm use 3.0.2@roro --create &&
  gem build
)

( mkdir -p sandbox/dev &&
  cd sandbox/dev &&
  sudo docker-compose down &&
#  docker system prune -af --volumes
  cd .. &&
  sudo rm -rf dev &&
  mkdir -p dev &&
  cd dev &&
  rvm use 3.0.2@roro --create &&
  gem install --local ../../roro/roro-0.3.29.gem  &&
  roro --help
#  roro rollon
  printf "2\n2\n1\n1\ny\na$var\n" | roro rollon
#  printf ${sequence} | roro rollon
)