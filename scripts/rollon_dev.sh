#!/bin/bash


( cd roro &&
  gem install rake
  rake install:local
  bundle &&
  gem build roro.gemspec )
( mkdir -p sandbox/development &&
  cd sandbox/development &&
  gem install --local ../../roro/roro.gem  &&
  roro --help &&
#  sudo docker-compose down &&
  sudo rm -rf *
  sudo rm -rf .*

  printf "4\n2\na$var\a" | roro rollon
#  printf ${sequence} | roro rollon
#  roro rollon
)