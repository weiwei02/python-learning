"""python 集合操作"""
S1 = set("apple")
S2 = {'e', 'p', 'l', 'a'}
print('set("apple") ==  {\'e\', \'p\', \'l\', \'a\'}', S1 == S2)

S1.add('s')
print("S1.add('s') = :", S1)

print("S1.difference(S2) = ", S1.difference(S2))
print("S1 - S2 = ", S1 - S2)
