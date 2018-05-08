cat sedLines.txt | sed 's/insert/update/'
# 全局的将insert修改为update 比如一行有两个insert那么将全部修改
cat sedLines.txt | sed 's/insert/update/g'
cat sedLines.txt | sed '/20/d'
# 删除包含数字0-8的信息
cat sedLines.txt | sed '/[0-8]/d'
# 将1-20行 从1替换成a
cat sedLines.txt | sed '1,20s/1/a/'
# 遇到cat开始 遇到dog结束  将所有的行后面添加 <--
cat animals.txt | sed '/cat/,/dog/s/$/ <--/'
# 改进版本 用于处理行与行之间的空格 以及其他噪点
cat sedLines.txt | sed '/line 1/,/line 20/s/1/a/g'
