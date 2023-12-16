#!/bin/bash
cp lam /usr/local/bin
if [ $? != 0 ]
  then
    echo "This script needs write access to /usr/local/bin - you can run it as root"
    exit
  fi
chmod +x /usr/local/bin/lam
echo "Installed!"
