#!/usr/bin/env python3
"""生成一组n*m的矩阵整数测试数据"""
# 引入randim模块，用于生成随机数
import random


def get_int(msg, miminum, default):
    """
    获取一个用户输入的整数，如果用户输入的数不符合规范则提示其重新输入
    :arg msg 输入提示字符串
    :arg miminum 可接受的最小值，如不满足此值提示用户重新输入
    :arg default 如果用户没有输入任何数，且该函数有默认值，则直接返回默认值
    """
    while True:
        try:
            line = input(msg)
            if not line and default is not None:
                return default
            i = int(line)
            if i < miminum:
                print("你输入的数必须 >= ", miminum)
            else:
                return i
        except ValueError as err:
            print(err)

# 设置行数，列数和最大、最小值
rows = get_int("rows:", 1, None)
columns = get_int("columns:", 1, None)
mininum = get_int("mininum:", -100000, 0)
default = 1000
if default < mininum:
    default = 2 * mininum
maximum = get_int("maximum(or Enter for" + str(default) + "):", mininum, default)

# 生成随机数，并打印矩阵，形成测试数据
row = 0
while row < rows:
    line = ""
    column = 0
    while column < columns:
        i = random.randint(mininum, maximum)
        s = str(i)
        while len(s) < 10:
            s = " " + s
        line += s
        column += 1
    print(line)
    row += 1

