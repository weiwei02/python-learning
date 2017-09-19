#!/usr/bin/env python3

"""交换排序—冒泡排序（Bubble Sort）

    基本思想：
    在要排序的一组数中，对当前还未排好序的范围内的全部数，自上而下对相邻的两个数依次进行比较和调整，让较大的数往下沉，较小的往上冒。即：每当两相邻的数比较后发现它们的排序与排序要求相反时，就将它们互换。
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/2
    :version 1.0
"""


def swap_while_lt(arr, index1, index2):
    """
    数组 arr[index1] 如果大于 arr[index2] 则执行数据交换
    :param arr: 数组
    :param index1: 第一个索引
    :param index2: 第二个索引
    :return: void
    """
    if arr[index1] > arr[index2]:
        temp = arr[index1]
        arr[index1] = arr[index2]
        arr[index2] = temp


def bubble_sort1(arr):
    """简单冒泡排序"""
    for i in range(0, len(arr)):
        j = len(arr) - 1 - i
        k = 0
        while k < j:
            swap_while_lt(arr, k, k + 1)
            k += 1


def bubble_sort2(arr):
    end = len(arr) - 1
    while end > 0:
        pos = 0
        for i in range(0, end):
            if arr[i] > arr[i + 1]:
                pos = i
                temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
        end = pos


if __name__ == '__main__':
    arr1 = [1, 5, 2, 4, 0, 14, 42, 65, 27, 22]
    print('元集合', arr1)
    bubble_sort1(arr1)
    bubble_sort2(arr1)
    print('新集合', arr1)