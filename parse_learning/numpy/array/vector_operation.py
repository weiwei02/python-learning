#!/usr/bin/env python3

"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/12/23
    :version 1.0
"""
import sys
from datetime import datetime
import numpy as np

"""
使用numpy数据向量计算对比原生python数据计算
注意这里的向量指的是数学中的向量   一个单纯的数可以看做是一个标量，那么数组就可以被看做是一个向量
"""


def numpysum(n):
    """
    numpy 数据向量运算
    :param n:
    :return:
    """
    a = np.arange(n) ** 2
    b = np.arange(n) ** 3
    c = a + b
    return c


def pythonsum(n):
    """python 原生数组运算"""
    # 使用列表内涵创建列表
    a = [element for element in  range(n)]
    b = [element for element in  range(n)]
    c = []

    for i in range(len(a)):
        a[i] = i ** 2
        b[i] = i ** 3
        c.append(a[i] + b[i])
    return c

if __name__ == '__main__':
    size = int(sys.argv[1])
    start = datetime.now()
    c = pythonsum(size)
    delta = datetime.now() - start
    print("求和结果集的后两个元素是 {}", c[-2:])
    print("python计算耗时 {}", delta)

    start = datetime.now()
    c = numpysum(size)
    delta = datetime.now() - start
    print("求和结果集的后两个元素是 {}", c[-2:])
    print("numpy计算耗时 {}", delta)
