#!/usr/bin/env python3

"""2015年主要城市年度数据(教育科技医疗)
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/21
    :version 1.0
"""
import pandas

# csv = pandas.read_csv("I:\workspace\github\python-learning\data\EducationAndHeathCare2015.csv", encoding="UTF-8")
csv = pandas.read_excel("I:\workspace\github\python-learning\data\EducationAndHeathCare2015.xlsx", encoding="UTF-8")
# 取第一行数据
first = csv.iloc[1]
# 前5行
head = csv.head()
# 后五行
tail = csv.tail()
# 索引
index = csv.index
# 查看不同列上的数据类型
d_types = csv.dtypes
# 列
columns = csv.columns
# 底层数据
values = csv.values
# 数据快速统计汇总
describe = csv.describe()
# 数据转置
t = csv.T
# 按轴进行排序
sort_index = csv.sort_index(axis=1, ascending=False)
# 按值进行排序
# sort = csv.sort(columns="A")

# 选择
# 选择一列
column_1 = csv['普通高等学校在校学生数(万人)']
# column_1 = csv.column_name
# 选择第1-2行
rows_1_2 = csv[1:2]
# 按行和列进行切片
slice_row_columns = csv.loc[0:2, ['普通高等学校在校学生数(万人)', '医院、卫生院数(个)']]
# 获取一个标量  索引是 int64 类型的
# va = csv.loc[1, 1]

# 通过位置选择
va_2 = csv.iloc[1, 1]
va_3 = csv.iat[1, 1]

help(csv)

if __name__ == '__main__':
    print(head)