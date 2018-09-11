#/bin/bash

if [ $# != 1 ]; then
  echo "usage: ./create_user.sh username"
else
  echo "$1 will be create"
  creater="useradd -ou 0 -g 0 $1"
  $creater
  if [ $? -eq 0 ]; then
    echo "$1:123456" | chpasswd
    echo $1 "created successful"
  else
    echo $1 "created failed"
  fi
fi
