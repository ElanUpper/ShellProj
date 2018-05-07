#! /bin/bash

# use command alias to run simply
#alias vim='vim 0506_01.sh'
#vim
#unalias

# command group
# () 隔离对下文不影响 nested sub-shell
# {} 非隔离对下文有影响 non-named command group
numb=`date +'%Y%m%d'`
(
  numb='()change it'
  echo $numb
)
echo $numb
{
  numb='{}change it'
  echo $numb
}
echo $numb

# && 成功了执行后面语句
# || 失败了执行后面的语句
# ; 无论如何都执行后面的语句


# (())
str1='1 + 2'
echo $str1 '=' $(($str1))
echo $str1 | bc
str2='0xf + 1'
echo $str2 '=' $(($str2))
str3='$str2 + 1'
echo $str3 '=' $((`echo $str3`))

# 打印出那些进程使用了某个文件或者socks
# fuser -v -m 0506_01.sh

<< block
set	 显示当前shell的变量=当前用户变量+shell自身的私有变量+环境变量
env  	 显示当前用户的变量
export 	 将
ubuntu@ip-172-31-23-87:~$ elan='shell'
ubuntu@ip-172-31-23-87:~$ set | grep elan
elan=shell
ubuntu@ip-172-31-23-87:~$ env | grep elan
ubuntu@ip-172-31-23-87:~$ export elan
ubuntu@ip-172-31-23-87:~$ env | grep elan
elan=shell
block


