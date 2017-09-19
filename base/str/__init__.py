"""python 字符串操作"""

# 字符串三种分片方式
string = 'Indentation Error'
print('%s[1] : %s' % (string, string[1]))
print('%s[-1] : %s' % (string, string[-1]))
print('%s[1: 5] : %s' % (string, string[1: 5]))
print('%s[1: 5: 2] : %s' % (string, string[1: 5: 2]))

# 字符串是否全为数字
print('字符串是否全为数字:', string.isalnum())
print('字符串是否全为字母:', string.isalpha())
print('字符串是否非空且首字母大写:', string.istitle())
seq = ['wang', '1']
print("['wang', 1]连接后的字符串为:", ''.join(seq))

# 字符串格式化
print('{}{}{}'.format('python', 3, '格式化'))
