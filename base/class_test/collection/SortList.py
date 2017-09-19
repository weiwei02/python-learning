#!/usr/bin/env python3

""" 排序集合
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/19
    :version 1.0
"""

_identity = lambda x: x


class SortedList:
    """排序列表，列表中的内容会自动被排序"""

    def __init__(self, sequence=None, key=None):
        self.__key = key or _identity  # 如果第一个操作数的意义为True，则返回第一个操作数，否则则返回第二个操作数
        assert hasattr(self.__key, "__call__")
        if sequence is None:
            self.__list = []
        elif (isinstance(sequence, SortedList) and
                      sequence.key == self.__key):
            self.__list = sequence.__list[:]
        else:
            self.__list = sorted(list(sequence), key=self.__key)

    @property
    def key(self):
        return self.__key

    def add(self, value):
        index = self.__bisect_left(value)
        if index == len(self.__list):
            self.__list.append(value)
        else:
            self.__list.insert(index, value)

    def __bisect_left(self, value):
        """计算合适的索引位置，并将带插入的索引位置返回
        使用的算法为二叉搜索"""
        key = self.__key(value)
        left, right = 0, len(self.__list)
        while left < right:
            middle = (left + right) // 2
            if self.__key(self.__list[middle]) < key:
                left = middle + 1
            else:
                right = middle
        return left

    def remove(self, value):
        """移除给定的值的首次出现"""
        index = self.__bisect_left(value)
        if index < len(self.__list) and self.__list[index] == value:
            del self.__list[index]
        else:
            raise ValueError("{0}.remove(x): x not in list".format(self.__class__.__name__))

    def remove_every(self, value):
        """删除每个值等于 value 的节点，返回删除的节点数"""
        count = 0
        index = self.__bisect_left(value)
        while index < len(self.__list) and self.__list[index] == value:
            del self.__list[index]
            count += 1
        return count

    def count(self, value):
        """返回指定的值在列表中出现的次数，可以使0"""
        count = 0
        index = self.__bisect_left(value)
        while index < len(self.__list) and self.__list[index] == value:
            index += 1
            count += 1
        return count

    def index(self, value):
        """返回指定的值在列表中首次出现的位置"""
        index = self.__bisect_left(value)
        if index < len(self.__list) and self.__list[index] == value:
            return index
        raise ValueError("{0}.index(x): x not in list".format(self.__class__.__name__))

    def __delitem__(self, index):
        del self.__list[index]

    def __getitem__(self, index):
        return self.__list[index]

    def __setitem__(self, index, value):
        raise TypeError("use add() to insert a value and rely on"
                        "this list to put it in the right place")

    def __iter__(self):
        return iter(self.__list)

    def __reversed__(self):
        return reversed(self.__list)

    def __contains__(self, item):
        index = self.__bisect_left(item)
        return index < len(self.__list) and self.__list[index] == item

    def clear(self, index=-1):
        self.__list = []

    def pop(self, index=-1):
        return self.__list.pop(index)

    def __len__(self):
        return len(self.__list)

    def __str__(self):
        return str(self.__list)

    def copy(self):
        return SortedList(self, self.__key)

    __copy__ = copy
