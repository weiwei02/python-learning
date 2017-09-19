#!/usr/bin/env python3

"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/19
    :version 1.0
"""
import elastic_learning.rest.ESConfigue as ESRequest
BLOGS = "blogs/"
ARTICLES = "articles/"


class BlogsRequest(ESRequest):
    """
    Blogs 索引请求类
    """
    def __init__(self):
        super().__init__(ESRequest.URL, BLOGS, "")


class ArticleRequest(BlogsRequest):
    """
    Blogs索引 articles类型请求类
    """
    def __init__(self):
        super().__init__().i_type = ARTICLES