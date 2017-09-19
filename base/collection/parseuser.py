"""从 center_user_2017-07-31.sql 文件中分析 用户表的数据"""
import collections
pre = "INSERT INTO `uc_user` VALUES ('"
fileName = "center_user_2017-07-31.sql"
User = collections.namedtuple("User", "id real_name username apicode")
users = []
usernames = set()

formatStr = "id={0.id}, real_name={0.real_name}, username={0.username}, apicode={0.apicode}"
for line in open(fileName, encoding="UTF-8"):
    if line.startswith(pre):
        keys = line = line.replace(pre, "").replace("'", "").replace(")", "").split(",")
        if keys[4] not in usernames:
            usernames.add(keys[4])
            users.append(User(keys[0], keys[3], keys[4], keys[7]))
usernamesOrdered = sorted(usernames)

# 使用lambda函数式编程，指定列表排序依据
users.sort(key=lambda x: x.username)
for user in users:
    print(formatStr.format(user))
