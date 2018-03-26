#!/usr/bin/env python3

""" 需求： 读取学历教育csv文件，并生成学历教育对象数据
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2018/3/26
    :version 1.0
"""


class CityEducationAndCare:

    def __init__(self, area):
        """构造方法，应该是在被创建类的对象时被调用"""
        # print("城市医疗条件类被初始化")
        self.__area = area

    @property
    def area(self):
        return self.__area

    @area.setter
    def area(self, area):
        self.__area = area


def file_path():
    return "I:\workspace\github\python-learning\data\EducationAndHeathCare2015.csv"


def read_file():
    cities = []
    file = open(file_path(), encoding="utf8")
    for line in file:
        items = line.split(",")
        cities.append(CityEducationAndCare(items[0]))
    return cities


if __name__ == '__main__':
    city = CityEducationAndCare("北京")
    city.area = "南京"
    for city in read_file():
        print(city.area)
