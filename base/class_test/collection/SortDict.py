#!/usr/bin/env python3

"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/19
    :version 1.0
"""
import base.class_test.collection.SortList as SortList


class SortedDict(dict):
    """带排序功能的字典"""
    def __init__(self, dictionary=None, key=None, **kwargs):
        dictionary = dictionary or {}
        super().__init__(dictionary)
        if kwargs:
            super().update(kwargs)
        self.__keys = SortList.SortedList(super().keys(), key)

    def update(self, dictionary=None, **kwargs):
        if dictionary is None:
            pass
        elif isinstance(dictionary, dict):
            super().update(dictionary)
        else:
            for key, value in dictionary.items():
                super().__setitem__(key, value)
        if kwargs:
            super().update(kwargs)
        self.__keys = SortList.SortedList(super().keys(), self.__keys.key)

    @classmethod
    def fromkeys(cls, iterable, value=None, key=None):
        return cls({k: value for k in iterable}, key)

    def __setitem__(self, key, value):
        if key not in self:
            self.__keys.add(key)
        return super().__setitem__(key, value)

    def value_at(self, index):
        """Returns the index-th item's value

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> d.value_at(0)
        2
        >>> d.value_at(5)
        6
        >>> d.value_at(2)
        3
        >>> d.value_at(19)
        Traceback (most recent call last):
        ...
        IndexError: list index out of range
        """
        return self[self.__keys[index]]

    def set_value_at(self, index, value):
        """Sets the index-th item's value to the given value

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> d.value_at(5)
        6
        >>> d.set_value_at(5, 99)
        >>> d.value_at(5)
        99
        >>> d.set_value_at(19, 42)
        Traceback (most recent call last):
        ...
        IndexError: list index out of range
        """
        self[self.__keys[index]] = value

    def clear(self):
        """Removes every item from this SortedDict
        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> len(d)
        6
        >>> d.clear()
        >>> len(d)
        0
        >>> d["m"] = 3
        >>> d["a"] = 5
        >>> d["z"] = 7
        >>> d["e"] = 9
        >>> list(d.keys())
        ['a', 'e', 'm', 'z']
        """
        super().clear()
        self.__keys.clear()

    def setdefault(self, key, value=None):
        """If key is in the dictionary, returns its value;
        otherwise adds the key with the given value which is also
        returned

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> d.setdefault("n", 99)
        3
        >>> list(d.values())
        [2, 4, 3, 1, 5, 6]
        >>> d.setdefault("r", -20)
        -20
        >>> list(d.items())[2:]
        [('n', 3), ('r', -20), ('s', 1), ('t', 5), ('y', 6)]
        >>> d.setdefault("@", -11)
        -11
        >>> d.setdefault("z", 99)
        99
        >>> d.setdefault("m", 50)
        50
        >>> list(d.keys())
        ['@', 'a', 'i', 'm', 'n', 'r', 's', 't', 'y', 'z']
        """
        if key not in self:
            self.__keys.add(key)
        return super().setdefault(key, value)

    def pop(self, key, *args):
        """If key is in the dictionary, returns its value and removes it
        from the dictionary. Otherwise returns arg if specified, or
        raises KeyError if there is no arg.

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> d.pop("n")
        3
        >>> "n" in d
        False
        >>> d.pop("q", 41)
        41
        >>> list(d.keys())
        ['a', 'i', 's', 't', 'y']
        >>> d.pop("a")
        2
        >>> d.pop("t")
        5
        >>> list(d.keys())
        ['i', 's', 'y']
        >>> d.pop("X")
        Traceback (most recent call last):
        ...
        KeyError: 'X'
        >>> d.pop("X", None)
        >>> d.pop("X", 1)
        1
        """
        if key not in self:
            if len(args) == 0:
                raise KeyError(key)
            return args[0]
        self.__keys.remove(key)
        return super().pop(key, args)

    def popitem(self):
        """Returns and removes an arbitrary item from the dictionary

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> len(d)
        6
        >>> item = d.popitem()
        >>> item = d.popitem()
        >>> item = d.popitem()
        >>> len(d)
        3
        """
        item = super().popitem()
        self.__keys.remove(item[0])
        return item

    def values(self):
        """Returns the dictionary's values in key order

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> list(d.values())
        [2, 4, 3, 1, 5, 6]
        """
        for key in self.__keys:
            yield self[key]

    def items(self):
        """Returns the dictionary's items in key order

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> list(d.items())
        [('a', 2), ('i', 4), ('n', 3), ('s', 1), ('t', 5), ('y', 6)]
        """
        for key in self.__keys:
            yield (key, self[key])

    def __iter__(self):
        """Returns an iterator over the dictionary's keys

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> list(d)
        ['a', 'i', 'n', 's', 't', 'y']
        >>> list(d.keys())
        ['a', 'i', 'n', 's', 't', 'y']
        """
        return iter(self.__keys)

    keys = __iter__

    def __delitem__(self, key):
        """Deletes the item with the given key from the dictionary

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> del d["s"]
        >>> del d["y"]
        >>> del d["a"]
        >>> list(d.keys())
        ['i', 'n', 't']
        >>> del d["X"]
        Traceback (most recent call last):
        ...
        KeyError: 'X'
        >>> d = SortedDict(dict(a=1, b=2, z=3))
        >>> list(d.keys())
        ['a', 'b', 'z']
        >>> del d["c"]
        Traceback (most recent call last):
        ...
        KeyError: 'c'
        >>> list(d.keys())
        ['a', 'b', 'z']
        """
        try:
            self.__keys.remove(key)
        except ValueError:
            raise KeyError(key)
        return super().__delitem__(key)

    def __setitem__(self, key, value):
        """If key is in the dictionary, sets its value to value;
        otherwise adds the key to the dictionary with the given value

        >>> d = SortedDict(dict(s=1, a=2, n=3, i=4, t=5, y=6))
        >>> d["t"] = -17
        >>> d["z"] = 43
        >>> d["@"] = -11
        >>> x = d["m"] = 22
        >>> x == 22
        True
        >>> d["r"] = 5
        >>> list(d.keys())
        ['@', 'a', 'i', 'm', 'n', 'r', 's', 't', 'y', 'z']
        """
        if key not in self:
            self.__keys.add(key)
        return super().__setitem__(key, value)

    def __repr__(self):
        return object.__repr__(self)

    def __str__(self):
        return ("{" + ", ".join(["{0!r}: {1!r}".format(k, v)
                                 for k, v in self.items()]) + "}")

    def copy(self):
        """Returns a shallow copy of the dictionary with the same
        key function

        >>> d = SortedDict(dict(V=1, E=2, I=3, N=4, S=5))
        >>> e = d.copy()
        >>> str(e)
        "{'E': 2, 'I': 3, 'N': 4, 'S': 5, 'V': 1}"
        >>> import copy
        >>> f = copy.copy(d)
        >>> str(f)
        "{'E': 2, 'I': 3, 'N': 4, 'S': 5, 'V': 1}"
        """
        d = SortedDict()
        super(SortedDict, d).update(self)
        d.__keys = self.__keys.copy()
        return d

    __copy__ = copy