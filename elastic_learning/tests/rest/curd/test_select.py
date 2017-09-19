#!/usr/bin/env python3

"""
    索引增删改查测试
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/19
    :version 1.0
"""
import unittest
import elastic_learning.rest.index.ArticlesType as articlesTypes

index_blogs = articlesTypes.BlogsRequest()
type_articles = articlesTypes.ArticleRequest()


class TestSelect(unittest.TestCase):
    def test_select(self):
        """http://ubuntu:9200/blogs"""
        a = index_blogs.get()
        self.assertEqual(a.status_code, 200, "请求出现错误")
        # print(a)

    def test_search_all(self):
        """http://ubuntu:9200/blogs/articles/_search"""
        a = type_articles.get(end_request="_search")
        self.assertEqual(a.status_code, 200, "请求出现错误")
        # print(a.json())

    def test_insert_noid(self):
        param = {
            "title": "如果你需要索引一个数据流比如日志事件",
            "author": "Li",
            "since": "2017-09-19 20:20:20",
            "categorie": "技术书籍",
            "tags": [
                "标签3",
                "标签2"
            ],
            "body": "这种格式类似一个有效的单行 JSON 文档 流 ，它通过换行符(\n)连接到一起。注意两个要点：每行一定要以换行符(\n)结尾， 包括最后一行 。这些换行符被用作一个标记，可以有效分隔行。这些行不能包含未转义的换行符，因为他们将会对解析造成干扰。这意味着这个 JSON 不 能使用 pretty 参数打印。"
        }
        a = type_articles.post(param)
        self.assertEqual(a.status_code, 201, "请求出现错误")
        self.assertEqual(a.json()["result"], "created", "出现异常信息")


if __name__ == '__main__':
    unittest.main()