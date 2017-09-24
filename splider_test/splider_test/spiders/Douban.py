#!/usr/bin/env python3
#coding=utf-8


""" 爬取豆瓣电影数据
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/23
    :version 1.0
"""
from scrapy.spiders import BaseSpider


class Douban(BaseSpider):
    name = "douban"
    allowed_domains = ["movie.douban.com"]
    start_urls = []

    def start_requests(self):
        file_object = open("movie_name.txt", "r")