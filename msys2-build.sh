#!/usr/bin/env /bin/bash

if [ -d git-crypt ] ; then
  cd git-crypt
  git pull
else
  git clone https://github.com/AGWA/git-crypt.git
  cd git-crypt
fi
make
