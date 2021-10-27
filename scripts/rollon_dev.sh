#!/bin/bash

(
  cd roro &&
  git add .
  git commit -m 'for dev'
  rvm install 3.0.2 &&
  rvm use 3.0.2@roro --create &&
  bundle &&
  rake install:local
  #  gem build roro.gemspec
)

( mkdir -p sandbox/dev &&
  cd sandbox/dev &&
  rvm use 3.0.2@roro --create &&
  gem install --local ../../roro/roro-*.gem  &&
#  roro --help &&
#  sudo docker-compose down &&
#  sudo rm -rf * &&
#  sudo rm -rf .* &&
  printf "2\n2\n1\n1\na$var\n" | roro rollon
#  printf ${sequence} | roro rollon
#  roro rollon
)