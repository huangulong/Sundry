#!/bin/base
echo "hello world !"

for file in `ls /etc`; do
   echo $file
done

#使用一个定义过的变量，只要在变量名前面加美元符号即可
your_name="huanggulong"
echo $your_name
echo ${your_name}

#使用变量的时候才加美元符（$）
for skill in Ada Coffe Action Java; do
   echo "I am good at ${skill}Script"
done

#使用 readonly 命令可以将变量定义为只读变量

myUrl="http://www.w3cschool.cc"
#readonly myUrl
myUrl="huanggulong"
echo myUrl

#1.使用 unset 命令可以删除变量。语法
#2.unset 命令不能删除只读变量。
yourUrl="http://www.runoob.com"
unset yourUrl
echo $yourUrl


#单引号里的任何字符都会原样输出 变量无效 不能使用转义符号
#双引号里可以有变量 可以出现转义字符
variable='yes'
str1='this is a ${variable}'
str2="this is a ${variable}"
echo $str1
echo $str2


#拼接字符串
your_name="huanggulong"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1

#获取字符串长度
string="abcd"
echo ${#string}


#提取子字符串
string2="runoob is a great site"
echo ${string2:1:4}

string3="runoob is great company"
echo ‘expr index "$string3" is’

#数组
array_name=(value0 value1 value2 value3 value4)
echo $array_name
value=${array_name[0]}
echo $value
echo ${array_name[@]}

length1=${#array_name[@]}
length2=${#array_name[*]}
lenggth=${#array_name[0]}
echo $lenght1 
echo $lenght2 
echo $lenggth

