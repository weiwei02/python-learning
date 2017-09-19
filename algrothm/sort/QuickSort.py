#!/usr/bin/env python3

"""交换排序—快速排序（Quick Sort） O(nlog2n)

    基本思想：
    1）选择一个基准元素,通常选择第一个元素或者最后一个元素,
    2）通过一趟排序讲待排序的记录分割成独立的两部分，其中一部分记录的元素值均比基准元素值小。另一部分记录的 元素值比基准值大。 
    3）此时基准元素在其排好序后的正确位置
    4）然后分别对这两部分记录用同样的方法继续进行排序，直到整个序列有序。
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/2
    :version 1.0
"""


def swap(arr, start, end):
    temp = arr[start]
    arr[start] = arr[end]
    arr[end] = temp


def partion(arr, start, end):
    """
    将元素以基准元素进行分区，基准元素左边都小于等于它，右边都大于等于他
    :param arr: 
    :param start: 
    :param end: 
    :return: 
    """
    key = arr[start]
    while start < end:
        while start < end and arr[end] >= key:
            end -= 1
        swap(arr, start, end)
        while start < end and arr[start] <= key:
            start += 1
        swap(arr, start, end)
    return start


def quick_sort(arr, start, end):
    if start < end:
        mid = partion(arr, start, end)
        quick_sort(arr, start, mid - 1)
        quick_sort(arr, mid + 1, end)


if __name__ == '__main__':
    arr1 = [1, 5, 2, 4, 0, 14, 42, 65, 27, 22]
    print('元集合', arr1)
    quick_sort(arr1, 0, len(arr1) - 1)
    print('新集合', arr1)