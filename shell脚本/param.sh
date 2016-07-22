#!/bin/bash
# author:huanggulong
# url:www.hgl.org

echo "Shell 传递参数实例!";
echo "执行的文件名: $0";
echo "第一个参数: $1";
echo "第二个参数: $2";
echo "参数个数为: $#";
echo "传递的参数作为一个字符串显示: $*";
echo "脚本运行的当前进程ID号: $$"
echo "与\$*相同，但是使用时加引号: $@";
echo "显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误: $?"
echo "显示Shell使用的当前选项，与set命令功能相同。: $-";
