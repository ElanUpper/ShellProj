#! /bin/bash

# usage: echo printf

set +H
echo "hello world!"
printf "hello world\n"

# delete new line for echo
echo -n "hello world"
printf "\t hello world"

# delete the space when face the assignment action 
name="elan"
age=100
val=1234567.1234
printf "name %-5s, age %d, the salay is $%-4.2f\n" ${name} ${age} ${val}
echo -e "\e[1;41m This is red text \e[0m, undo"
echo -e "\e[1;41m\e[1;33m This is red text \e[0m, undo"
