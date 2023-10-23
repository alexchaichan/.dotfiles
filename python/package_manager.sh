#!/usr/bin/env bash

python3 -m pip install --upgrade pip

source $DOTFILES/python/Pipfile.sh

for i in $pip_packages;
  do pip3 install $i;
done
