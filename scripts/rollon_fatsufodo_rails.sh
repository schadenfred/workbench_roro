#!/bin/bash

( cd roro &&
  bundle &&
  gem build roro.gemspec)
( mkdir -p sandbox/rails &&
  cd sandbox/rails &&
  rvm install 2.7.3 &&
  rvm use 2.7.3@sandbox --create &&
  gem install --local ../../roro/roro-0.3.23.gem  &&
  gem install byebug &&
  roro --help &&
  sudo docker-compose down &&
  sudo rm -rf *
  roro rollon
#  printf "1\n4\ny\ny\ny\ny\ny\ny\ny$var\n" | roro rollon

)

