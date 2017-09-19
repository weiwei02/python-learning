"""python 流程控制语句
if语句语法
"""
a = 1
if a == 0:
    print("a是正确的")
elif a == 1:
    print("a是错误的")
else:
    print('不知道a是多少')

# while 语句
i = 0
while i < 100:
    i = i + 1
print('while 循环了%d次', i)

# for in 语句
list1 = ['i', 'am', 1, 'list']
for var in list1:
    print(var)
