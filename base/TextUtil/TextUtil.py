#!/usr/bin/env python3

"""
    该模块提供一些简单的字符串操作方法
  :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
  :sine 2017/8/10
  :version 1.0
"""

import string


def simplify(text, whitespace=string.whitespace, delete=""):
    """
    将字符串中多余的空格给去掉
    
    :param text: 原
    字符串
    :param whitespace: 
    :param delete: 
    :return: 
    
    
    >>> simplify(" this    and\\n that\\t too")
    'this and that too'v

    """
    result = []
    word = ""
    for char in text:
        if char in delete:
            continue
        elif char in whitespace:
            if word:
                result.append(word + " ")
                word = ""
        else:
            word += char
    if word:
        result.append(word)
    return "".join(result).rstrip()


def is_balanced(text, brackets="()[]{}<>"):
    """
    判断字符串是否由括号开头和结尾
    
    :param text: 
    :param brackets: 
    :return: 
    
    >>> is_balanced("(python (is (not (lisp))))")
    True
    """
    counts = {}
    left_for_right = {}
    for left, right in zip(brackets[::2], brackets[1::2]):
        assert left != right, "the bracket characters must differ"
        counts[left] = 0
        left_for_right[right] = left
    for c in text:
        if c in counts:
            counts[c] += 1
        elif c in left_for_right:
            left = left_for_right[c]
            if counts[left] == 0:
                return False
            counts[left] -= 1
    return not any(counts.values())


if __name__ == "__main__":
    import doctest
    doctest.testmod()