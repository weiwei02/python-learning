#!/usr/bin/env python3

"""简单选择排序的改进——二元选择排序

    简单选择排序，每趟循环只能确定一个元素排序后的定位。我们可以考虑改进为每趟循环确定两个元素（当前趟最大和最小记录）的位置,从而减少排序所需的循环次数。改进后对n个数据进行排序，最多只需进行[n/2]趟循环即可。
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/2
    :version 1.0
"""


def select_key(arr, start, end):
    """
    除首尾位置外，从剩余的元素中选出最小值，并返回其索引
    :param arr: 数组
    :param start: 数组首位置
    :param end: 数组尾位置
    :return: (min,max)  返回最小值和最大值元素在数组中的索引
    """
    minm = start
    maxm = end
    for j in range(start + 1, end):
        if arr[minm] > arr[j]:
            minm = j
        if arr[maxm] < arr[j]:
            maxm = j
    return minm, maxm


def simple_select_sort(arr):
    """简单选择排序主方法"""
    start = 0
    end = len(arr) - 1
    while start < end:
        keys = select_key(arr, start, end)
        swap(arr, keys[0], start)
        swap(arr, keys[1], end)
        start += 1
        end -= 1


def swap(arr, key, index):
    """将arr[key] 和 arr[index] 的值进行交换"""
    if key != index:
        temp = arr[index]
        arr[index] = arr[key]
        arr[key] = temp


if __name__ == '__main__':
    arr1 = [1, 5, 2, 4, 0, 14, 42, 65, 27, 22]
    print('元集合', arr1)
    simple_select_sort(arr1)
    print('新集合', arr1)