# -*- coding: utf-8 -*-

# Define here the models for your scraped items
# Items是将要装载抓取的数据的容器，它工作方式像python里面的字典，但它提供更多的保护，比如对未定义的字段填充以防止拼写错误。

# 在Item中定义自己要抓取的数据
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

from scrapy.item import Item, Field


class SpliderTestItem(Item):
    # define the fields for your item here like:
    # name = 电影名字
    movie_name = Field()
    # 电影导演
    movie_director = Field()
    # 电影编剧
    movie_weiter = Field()
    # 电影演员
    movie_roles = Field()
    # 电影语言
    movie_langue = Field()
    # 上映时间
    movie_date = Field()
    # 电影时长
    movie_long = Field()
    desc = Field()


class BossItem(Item):
    id = Field()
    name = Field()
    salary = Field()
    city = Field()
    experience = Field()
    background = Field()
    company = Field()
    time = Field()
    job_sec = Field()


class BossDetail(Item):
    id = Field()
    job_sec = Field()
