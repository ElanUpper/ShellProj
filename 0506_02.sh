#! /bin/bash

echo '目前进程个数', $#

# if else 
# 1.[  ]里的表达式两边各有一个空格，=两边也各有一个空格。
# 2. 字符串比较可以使用=或==
if [ 01 -eq 1 ]; then
  echo 'equal'
else
  echo 'not equal'
fi
if [ 01 = 1 ]; then
  echo 'equal';
elif [ 01 != 1 ]; then
  echo 'not euqal';
else
  echo 'unknow'
fi

# case
var=4
case $var in
  [a-z][A-Z])
    echo 'this is a charater'
    ;;
  [0-9])
    echo 'this is a number'
    ;;
  *)
    echo 'unkonw'
   ;;
esac

# while  条件满足一直执行
#numb=0
#while numb < 10 
#do
#  printf "%s" $numb;
#  i++;
#done

# until 条件不满足位置
#i=0
#until $i >= '10'
#do
#  echo $i;
#  i++;
#done

max=20
#for i in {1..10}
for i in `seq 2 $max`
do
  echo $i
done

for((i=1;i<=10;++i)) {
  echo $i
}

calc(){
  if [ ! -n "$1" ];then
    echo '请设定第一个参数'
    return
  elif [ ! -n "$2" ];then
    echo '请设置第二个参数'
    return
  fi
  ret=$(($1 + $2))
  return $ret
}

calc 
calc 10 
calc 10 20
ret=$?
echo $ret

test_var(){
  for var in $*
  do
    echo $var
  done
  echo $1 $10 $11
}

test_var 1 2 3 4 5 6 7 8 9 10 11 
