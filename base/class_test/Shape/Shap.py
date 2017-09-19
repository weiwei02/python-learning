#!/usr/bin/env python3

"""
    点类，数学中的点，拥有横坐标和纵坐标
    
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""


import math


class Point:
    def __init__(self, x=0, y=0):
        """带有默认值横纵坐标的的构造方法"""
        self.x = x
        self.y = y

    def distance_from_origin(self):
        """点到原点的距离"""
        return math.hypot(self.x, self.y)

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y

    def __repr__(self):
        return "Point({0.x!r},{0.y!r})".format(self)

    def __str__(self):
        return "({0.x!r},{0.y!r})".format(self)


class Circle(Point):

    def __init__(self, radius, x=0, y=0):
        super().__init__(x, y)
        self.radius = radius

    def edge_distance_from_origin(self):
        return abs(self.distance_from_origin() - self.radius)

    def area(self):
        return math.pi * (self.radius ** 2)

    def circumference(self):
        return 2 * math.pi * self.radius

    def __eq__(self, other):
        return self.radius == other.radius and super().__eq__(other)

    def __repr__(self):
        """{0.x!r}  !r 能够保持 x 原本的数据类型"""
        return "Circle({0.radius!r}, {0.x!r}, {0.y!r})".format(self)

    def __str__(self):
        return repr(self)