#!/bin/bash

( cd roro &&
  bundle &&
  gem build roro.gemspec)
( mkdir -p sandbox/roro_generate &&
  cd sandbox/roro_generate &&
  rvm install 2.7.3 &&
  rvm use 2.7.3@sandbox --create &&
  gem install --local ../../roro/roro-0.3.23.gem  &&
  gem install byebug &&
  roro help
  rm -rf *
#  roro help generate
)

