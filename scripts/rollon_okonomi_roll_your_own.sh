#!/bin/bash

( cd roro &&
  bundle &&
  gem build roro.gemspec)
( mkdir -p sandbox/roll_your_own &&
  cd sandbox/roll_your_own &&
  rvm install 2.7.3 &&
  rvm use 2.7.3@sandbox --create &&
  gem install --local ../../roro/roro-0.3.23.gem  &&
  gem install byebug &&
  roro --help &&
#  sudo docker-compose down &&
  rm -rf *
  printf "2\n1\ny\ny\ny\ny\ny\ny\ny$var\n" | roro rollon

)

