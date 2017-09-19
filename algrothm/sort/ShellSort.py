#!/usr/bin/env python3
import math
"""
    插入排序—希尔排序（Shell`s Sort）
    
    希尔排序是1959 年由D.L.Shell 提出来的，相对直接排序有较大的改进。希尔排序又叫缩小增量排序

    基本思想：
    
    先将整个待排序的记录序列分割成为若干子序列分别进行直接插入排序，待整个序列中的记录“基本有序”时，再对全体记录进行依次直接插入排序。
    
    操作方法：
    
    1.先取一个正整数 d1(d1 < n)，把全部记录分成 d1 个组，所有距离为 d1 的倍数的记录看成一组，然后在各组内进行插入排序
    2.然后取 d2(d2 < d1)
    3.重复上述分组和排序操作；直到取 di = 1(i >= 1) 位置，即所有记录成为一个组，最后对这个组进行插入排序。一般选 d1 约为 n/2，d2 为 d1 /2， d3 为 d2/2 ，…， di = 1。
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/1
    :version 1.0
"""


def swap(arr, i, j):
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp


def shell_sort(arr):
    d1 = len(arr) // 2
    while d1 > 0:
        for i in range(d1, len(arr)):
            j = i
            while j >= d1:
                if arr[j] < arr[j - d1]:
                    swap(arr, j, j - d1)
                    j -= d1
                else:
                    # 默认前面的指针都是已经经过排序的序列，故而一旦发现 arr[j] >= arr[j - d1] 则不再进行插入排序
                    break
        d1 = d1 // 2
        print(arr)


if __name__ == '__main__':
    arr1 = [1, 5, 2, 4, 1, 14, 42, 65, 27, 22]
    print('元集合', arr1)
    shell_sort(arr1)
    print('新集合', arr1)