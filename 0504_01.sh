#! /bin/bash

awk 'BEGIN{print "begin"}  {print} END{print "end"}' /home/ubuntu/shellProj/book_1.txt
echo 'use regular expression'
awk 'BEGIN{print "begin"} '/^t.*/' {print} END{print "end"}' /home/ubuntu/shellProj/book_1.txt
echo 'use variable'
awk 'BEGIN{i=0} {print NR, NF; i++} END{print i}' /home/ubuntu/shellProj/book_1.txt
echo 'use column value'
awk '{print $2 $1}' /home/ubuntu/shellProj/book_1.txt
echo 'vim PID'
ps auxw | grep vim | awk '{print $2}'
echo 'memory info'
cat /proc/meminfo | awk '/MemTotal/{print $2}'
echo 'ip address'
ip addr | grep 'inet' | grep 'brd' | awk '{print $4}'
echo 'user list'
cat /etc/passwd | awk -F: '{print NR, $1, NF}'
echo 'format list: real title and handle with requirement'
cat /home/ubuntu/shellProj/book_1.txt | awk 'BEGIN{getline; print "normal:"$1, "upper:",$2} {print} END{}'
