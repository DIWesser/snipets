#!/bin/bash
#
# Modified from https://stackoverflow.com/a/4638911. The other answers include
# a discussion of when using find is a better option.

recursivels() {
  local start_dir=$(pwd)
  for i in *; do
    if [ -d "$i" ]; then
      (cd -- "$i" && recursivels)
    fi
    printf "$(pwd)/$i\n"
  done
  cd "$start_dir"
}

recursivels
