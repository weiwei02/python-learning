"""基本异常处理"""
s = input("请输入一个数字")
try:
    i = int(s)
    print("你输入是是数字:",i)
except ValueError as err:
    print(err)
