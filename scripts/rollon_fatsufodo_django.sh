#!/bin/bash

(cd roro && gem build roro.gemspec)
(cd sandbox &&
  rvm use 2.7.3@sandbox --create
  gem install ../roro/roro-0.3.23.gem  &&
  roro --help # &&
  roro rollon
)

