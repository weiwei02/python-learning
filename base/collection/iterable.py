"""python 迭代"""
# 使用enumerate enumerate() 以迭代子为参数，并返回一个枚举对象，该对象可以看作为一个迭代子。
# 每次迭代是，返回一个二元组，该二元组的第一项为迭代次数（默认从0开始），第二项是来自enumerate()调用的迭代子的下一项。

"""输入一个单词 word,输出包含单次 word 的行号与该行内容"""

word = input("请输入要检索的词汇：")
fileName = 'word.txt'
count = 0
for lineno, line in enumerate(open(fileName), start=1):
    if word in line:
        print("{0}: {1}".format(lineno, line))
        count += 1
print("{0}共计出现了{1}次".format(word, count))
