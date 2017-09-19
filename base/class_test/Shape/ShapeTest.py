#!/usr/bin/env python3

import base.class_test.Shape.Shap as Shap
"""面向对象编程测试
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/18
    :version 1.0
"""
p = Shap.Point(28, 45)
c = Shap.Circle(5, 28, 45)
print("原点到点的距离", p.distance_from_origin())
print("原点到圆的距离", c.distance_from_origin())
print("远的半径是", c.radius)
c.radius = c.radius + 1
print("远的半径是", c.radius)
