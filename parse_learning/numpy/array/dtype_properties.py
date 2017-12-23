#!/usr/bin/env python3

""" dtype 属性
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/12/23
    :version 1.0
"""
from numpy import *


def print_dtype():
    x = dtype('float64')
    print("字符码是 {}".format(x.char))
    print("item size is %d" % x.itemsize)
    print("type is %s" % x.type)


if __name__ == '__main__':
    print_dtype()