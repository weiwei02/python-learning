#!/usr/bin/env python3

""" 数组形状转换操作
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2018/1/4
    :version 1.0
"""
import numpy as np

print("In: b = np.arange(25).reshape(2,3,4)")
# 创建一个数组，并将其形状转化为三维数组
b = np.arange(24).reshape(2, 3, 4)
"""
out: 
[[[ 0  1  2  3]
  [ 4  5  6  7]
  [ 8  9 10 11]]

 [[12 13 14 15]
  [16 17 18 19]
  [20 21 22 23]]]
"""
print(b)
# 将三维数组拆分成一维数组
print("In: print(b.ravel())")
"""
out:
[ 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23]
"""
print(b.ravel())
# 将数组拉伸
print("In: b.flatten()")
"""
out:
[ 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23]
"""
print(b.flatten())
# 用元组指定数组的形状
print("In: b.shape = (6,4)")
b.shape = (6,4)
"""
out:
[[ 0  1  2  3]
 [ 4  5  6  7]
 [ 8  9 10 11]
 [12 13 14 15]
 [16 17 18 19]
 [20 21 22 23]]
"""
print(b)
# 数组转置
print("In: b.transpose()")
"""
out:
[[ 0  4  8 12 16 20]
 [ 1  5  9 13 17 21]
 [ 2  6 10 14 18 22]
 [ 3  7 11 15 19 23]]
"""
print(b.transpose())
# 调整数组大小
print("In: b.resize(2,12)")
b.resize((2,12))
print(b)