#!/usr/bin/env python3

"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/21
    :version 1.0
"""


def open_file(filename):
    fh =None
    try:
        fh = open(filename, encoding='utf-8')
    except Exception as e:
        print(e)
    return fh


def send_msg(words):
    print("城市： {0},  {1}   {2}".format(*words))
    return "1"


def write_to_csv(results):
    out = open("result.csv", "w", encoding="UTF-8")
    for line in results:
        out.write(line)
    out.close()


def parse_csv(filename):
    results = []
    fh = open_file(filename)
    i = 0
    for line in fh:
        if i > 0:
            words = line.split(",")
            send_msg(words[:len(words) - 2])
            line = line.replace("\n", str(i) + "\n")
            results.append(line)
        else:
            results.append(line)
        i += 1
    write_to_csv(results)


if __name__ == '__main__':
    parse_csv("I:\workspace\github\python-learning\data\EducationAndHeathCare2015.csv")