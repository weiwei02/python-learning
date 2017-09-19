#!/usr/bin/env python3

""" 对blogs 索引的操作类
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/18
    :version 1.0
    
    localhost
"""
import elastic_learning.rest.ESConfigue as es

es_request = es.ESRequest(es.URL, index="a/", i_type="articles/")


def getInfo():
    """"
    查看es的安装信息
    """
    return es_request.get()


def create_articles_index():
    """
    创建一个articles 索引
    
    http://ubuntu:9200/a/articles/
    :return: 
    """
    return es_request.put(None)


def insert_ar():
    param = {
        "title": "测试文章",
        "author": "张三",
        "text": "Elastic Search就像是一个nosql数据库一样，存储我们要进行查询的信息，在ES中，数据库名就是索引名。一个 Elastic Search 集群可以包含多个索引，相应的每个索引可以包含多个类型 。这些不同的类型存储着多个文档 ，每个文档又有多个属性。"
    }
    return es_request.post(param)


def insert_ar2():
    param = {
        "title": "每个文档都属于articles类型",
        "author": "李四",
        "text": "按照这个设计思路，我们向ES中索引一篇文章，其请求信息图4所示。"
    }
    return es_request.post(param, end_request="1")


def search_all():
    return es_request.get(None, end_request="_search")


def select(id):
    return es_request.get(None, end_request=id)

if __name__ == '__main__':
    print(select("1"))