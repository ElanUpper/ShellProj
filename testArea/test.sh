#! /bin/bash

unset elan_shell
#elan_shel1='shel1'
elan_shell='shell'
echo 'env' `env | grep elan_shell`
echo 'set' `set | grep elan_shell`
#echo 'set' `set | grep elan_shel1`
export elan_shell
#export elan_shel1
echo 'env' `env | grep elan_shell`
echo 'set' `set | grep elan_shell` # 将会新增一个_变量
#echo 'set' `set | grep elan_shel1` # 将会新增一个_变量

./test_child.sh
echo 'child_var=' $child_var
source ./test_child.sh
echo 'child_var=' $child_var

