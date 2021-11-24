#!/bin/bash

( cd roro &&
  rvm use 3.0.2@sandbox --create &&
  bundle &&
  gem build roro.gemspec )
( rm sandbox
  mkdir -p sandbox/dev &&
  cd sandbox/dev &&
  rvm use 3.0.2@sandbox --create &&
  gem install --local ../../roro/roro-0.3.29.gem  &&
  roro --help &&
#  sudo docker-compose down &&
#  sudo rm -rf * &&
#  sudo rm -rf .* &&
  roro rollon
#  printf "2\n4\na$var\n" | roro rollon
)