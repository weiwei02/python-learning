#!/usr/bin/env python3

""" 点类测试
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2018/3/28
    :version 1.0
"""

from base.class_test.Shape import Shap
# Point = Shap.Point
# point1 = Shap.Point()
# point2 = Point(1, 2)
# point3 = Point(1, 2)
# print(point1)
# print(str(point2))
#
#
# print(point2 == point3)
# print(point2.distance_from_origin())

Circle = Shap.Circle

c1 = Circle(10)
c2 = Circle(15)
if c1 > c2:
    print("c1 > c2")
else:
    print("c1 < c2")

print(c1 != c2)

print(c1 + c2)