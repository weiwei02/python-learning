#!/usr/bin/env python3

"""
    插入排序算法：
    思想：每一步都将一个待排数据按其大小插入到已经排序的数据中的适当位置，直到全部插入完毕。
    
    问题描述：
    输入： n个数的一个序列<a1,a2,...,an>
    输出： 输出序列的一个排列<a1',a2',...,an'>
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/1
    :version 1.0
"""


def insert_sort(source):
    """
    插入排序算法
    :param source: 
    :return: 
    """
    for i in range(1, len(source)):
        if source[i] < source[i - 1]:
            j = i - 1
            temp = source[i]
            while j >= 0 and temp < source[j]:
                source[j + 1] = source[j]
                j -= 1
            source[j + 1] = temp
    return source


if __name__ == '__main__':
    arr1 = [1, 5, 2, 0, 1, 14, 42, 65, 27]
    print('元集合', arr1)
    insert_sort(arr1)
    print('新集合', arr1)
