#! /bin/bash

# 使用数组
arr=(1 2 3 4)
arr[4]=10
# 打印所有元素列表
printf "%s %s %s %s %d\n" ${arr[0]} ${arr[1]} ${arr[2]} ${arr[3]} ${arr[4]}
echo ${arr[*]} 
# 打印出元素个数
echo ${#arr[*]}

# 关联数组
declare -A ass_arr
ass_arr=([index1]=val1 [index2]=val2)
ass_arr[index3]=val3
# 打印出所有索引
echo ${!ass_arr[*]}
# 打印出所有值
echo ${ass_arr[*]}
for item in ${!ass_arr[*]}
do
  printf 'index:%s val:%s ' ${item} ${ass_arr[$item]}
done
printf '\n'
