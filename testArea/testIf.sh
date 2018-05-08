#! /bin/bash

var1='hello'
var2=''

if [ -n "$var1" ]; then
  echo "$var1 is not null"
elif [ -z "$var1" ]; then
  echo "$var is null"
fi

if [ -n ]; then
  echo "如果使用-n并且带变量一定要加\", 否则会将-n解析成字符串, 并且恒非空"
fi

if [ $var1 ]; then 
  echo "$var1 is not null"
else
  echo "$var1 is null"
fi

echo "the shell variable count = $#, shell variable $@, shell variabel $*"
