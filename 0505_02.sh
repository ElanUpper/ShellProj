#! /bin/bash

# <<BLOCK 是一个HEAD document, 会找到对应配置的BLOCK  然后输出到log.txt
cat<<BLOCK>log.txt
this is a test log file
BLOCK

# 使用文件描述符进行读取文件
stroutput=`echo 'redirect output'`
echo $stroutput > input.txt
exec 3<input.txt
cat <&3
rm -rf input.txt

# 使用文件描述符文件写入(截断模式)
exec 4>output.txt
echo 'output1' >&4
cat output.txt
rm -rf output.txt
