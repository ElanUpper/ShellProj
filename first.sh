#! /bin/bash

#hello = 'hello world'
tracer(){
  [ "$_DEBUG" == "on" ] && $@ || :
}

set -
for file in *
do
  if grep -q $1 $file
  then
    echo $file
  fi
done
set +

#tracer echo $1
exit 0


