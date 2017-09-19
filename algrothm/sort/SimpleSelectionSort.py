#!/usr/bin/env python3

"""选择排序—简单选择排序（Simple Selection Sort）
    基本思想：
    
    在要排序的一组数中，选出最小（或者最大）的一个数与第1个位置的数交换；然后在剩下的数当中再找最小（或者最大）的与第2个位置的数交换，依次类推，直到第n-1个元素（倒数第二个数）和第n个元素（最后一个数）比较为止。
    
    操作方法：

    第一趟，从n 个记录中找出关键码最小的记录与第一个记录交换；
    第二趟，从第二个记录开始的n-1 个记录中再选出关键码最小的记录与第二个记录交换；
    以此类推.....
    第i 趟，则从第i 个记录开始的n-i+1 个记录中选出关键码最小的记录与第i 个记录交换，
    直到整个序列按关键码有序。
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/2
    :version 1.0
"""


def min_key(arr, i, length):
    """从剩余的元素中选出最小值，并返回其索引"""
    temp = i
    for j in range(i + 1, length):
        if arr[temp] > arr[j]:
            temp = j
    return temp


def simple_select_sort(arr):
    """简单选择排序主方法"""
    length = len(arr)
    for i in range(0, length):
        key = min_key(arr, i, length)
        if key != i:
            temp = arr[i]
            arr[i] = arr[key]
            arr[key] = temp


if __name__ == '__main__':
    arr1 = [1, 5, 2, 4, 0, 14, 42, 65, 27, 22]
    print('元集合', arr1)
    simple_select_sort(arr1)
    print('新集合', arr1)



