#! /bin/bash

for arg in $*
do
  rm -rf $arg
done
rm -rf $PWD/files/std*
rm -rf $PWD/log.txt
