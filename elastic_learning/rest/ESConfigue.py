#!/usr/bin/env python3

"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/18
    :version 1.0
"""
import requests
URL = "http://ubuntu:9200/"
SEARCH = "_search"


class ESRequest:
    def __init__(self, url="", index="", i_type=""):
        self.__url = url
        self.__index = index
        self.__i_type = i_type
        self.__reconstruct_request_url()

    @property
    def url(self):
        return self.__url

    @property
    def index(self):
        return self.__index

    @index.setter
    def index(self, index):
        self.__index = index
        self.__reconstruct_request_url()

    @property
    def i_type(self):
        return self.__i_type

    @i_type.setter
    def i_type(self, i_type):
        self.__i_type = i_type
        self.__reconstruct_request_url()

    def __reconstruct_request_url(self):
        self.__request_url = self.__url + self.__index + self.__i_type

    def get(self, params=None, request_url="", end_request=""):
        return self.__http_request(requests.get, params, request_url, end_request)

    def post(self, param, request_url="", end_request=""):
        return self.__http_request(requests.post, param, request_url, end_request)

    def put(self, param, request_url="", end_request=""):
        return self.__http_request(requests.put, param, request_url, end_request)

    def delete(self, request_url="", end_request=""):
        return self.__http_request(requests.delete, None, request_url, end_request)

    def __http_request(self, method, param, request_url="", end_request=""):
        if request_url == "" or request_url is None:
            a = method(self.__request_url + end_request, json=param)
            return a.json()
        else:
            a = method(self.__request_url + end_request + "?" + request_url, json=param)
            return a.json()