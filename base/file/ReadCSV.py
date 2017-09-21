#!/usr/bin/env python3

""" 读写csv文件
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/21
    :version 1.0
"""
from elastic_learning.rest.ESConfigue import ESRequest


es = ESRequest(index="a/", i_type="healthCareAndEducation/")

def open_file(filename):
    fh = None
    try:
        fh = open(filename, encoding='utf-8')
    except Exception as e:
        print(e)
    return fh


def send_msg(words):
    param = {
        "city": words[0],
        "high_level_school_num": float(words[1]),
        "hospital": (float(words[2])),
        "doctor_num": 0,
        "cinema_num":0,
        "year": 2015,
        "from": "国家统计局"
    }
    return es.insertWithGenerater(param)


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
            id = send_msg(words[:len(words) - 2])
            line = line.replace("\n", id + "\n")
            results.append(line)
        else:
            results.append(line)
        i += 1
    write_to_csv(results)


if __name__ == '__main__':
    parse_csv("I:\workspace\github\python-learning\data\EducationAndHeathCare2015.csv")