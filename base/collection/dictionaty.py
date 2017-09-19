"""python 字典"""
import collections
# 创建字典的语法
d1 = dict({"id": "1", "name": "Washer", "age": 12})
d2 = dict(id=2, name="Balence",age=15)
d3 = dict([("id", 3), ("name", "Cara"), ("age", 10)])
d4 = dict(zip(("id", "name", "age"),(4, "Flame", "13")))
d5 = {"id": 5,"name": "Honey", "age": 23}

d5["sex"] = "famale"

del d5["sex"]; print(d5)

#默认字典
dedict = collections.defaultdict(int)
dedict[1] += 1
print("dedict[1]+=1  =  :", dedict[1])
