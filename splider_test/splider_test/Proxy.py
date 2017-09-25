#!/usr/bin/env python3
# encoding = utf-8
"""  网络代理设置
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/24
    :version 1.0
"""
import random
from lxml import etree

import requests
from bs4 import BeautifulSoup
import lxml
from multiprocessing import Process, Queue
import random
import json
import time
import scrapy
import scrapy.downloadermiddlewares.retry

class Proxies(object):
    """docstring for Proxies"""

    def __init__(self, page=20):
        self.proxies = []
        self.verify_pro = []
        self.page = page
        self.headers = {
            'Accept': '*/*',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',
            'Accept-Encoding': 'gzip, deflate, sdch',
            'Accept-Language': 'zh-CN,zh;q=0.8'
        }
        # self.get_proxies_xici()
        self.get_proxies_nn()

    def get_proxies_xici(self):
        page = random.randint(1, 10)
        page_stop = page + self.page
        while page < page_stop:
            url = 'http://www.xicidaili.com/nt/%d' % page
            html = requests.get(url, headers=self.headers).content
            soup = BeautifulSoup(html, 'lxml')
            ip_list = soup.find(id='ip_list')
            for odd in ip_list.find_all(class_='odd'):
                protocol = odd.find_all('td')[5].get_text().lower() + '://'
                self.proxies.append(protocol + ':'.join([x.get_text() for x in odd.find_all('td')[1:3]]))
            page += 1

    def get_proxies_nn(self):
        # page = random.randint(1, 10)
        page = 1
        page_stop = page + self.page
        while page < page_stop:
            url = 'http://www.66ip.cn/%d.html' % page
            html = requests.get(url, headers=self.headers).content
            a = etree.HTML(html)
            trlist = a.xpath("//div[@align='center']//tr")
            i = 0
            for tr in trlist:
                if i > 0:
                    tds = tr.xpath("td")
                    self.proxies.append("https://" + "".join(tds[0].xpath("text()")) + ":" + "".join(tds[1].xpath("text()")))
                    self.proxies.append("http://" + "".join(tds[0].xpath("text()")) + ":" + "".join(tds[1].xpath("text()")))
                i += 1
            page += 1

    def get_proxies_nn1(self):
        # page = random.randint(1, 10)
        page = 1
        page_stop = page + self.page
        while page < page_stop:
            url = 'http://www.kuaidaili.com/free/inha/%d/' % page
            html = requests.get(url, headers=self.headers).content
            a = etree.HTML(html)
            trlist = a.xpath("//tbody/tr")
            for tr in trlist:
                    ip = tr.xpath("td")[0]
                    addr = "".join(ip.xpath("text()"))
                    addr += ":" + "".join(tr.xpath("td")[1].xpath("text()"))
                    if "".join(tr.xpath("td")[3].xpath("text()")) == "HTTP":
                        addr = "http://"+addr
                    else:
                        addr = "https://" + addr
                    self.proxies.append(addr)
            page += 1

    def verify_proxies(self):
        # 没验证的代理
        old_queue = Queue()
        # 验证后的代理
        new_queue = Queue()
        print('verify proxy........')
        works = []
        for proxy in self.proxies:
            old_queue.put(proxy)
        for _ in range(50):
            works.append(Process(target=self.verify_one_proxy, args=(old_queue, new_queue)))
        for work in works:
            work.start()
        self.proxies = []
        while 1:
            try:
                self.proxies.append(new_queue.get(timeout=2))
            except:
                break
        print('verify_proxies done!')

    def verify_one_proxy(self, old_queue, new_queue):
        while 1:
            proxy = old_queue.get(timeout=1)
            if not proxy:
                break
            protocol = 'https' if 'https' in proxy else 'http'
            proxies = {protocol: proxy}
            try:
                code = requests.get('https://www.zhipin.com/', proxies=proxies, timeout=2).status_code
                if code == 200:
                    print('success %s' % proxy)
                    new_queue.put(proxy)
            except Exception as e:
                print('fail %s' % proxy)


if __name__ == '__main__':
    a = Proxies()
    a.verify_proxies()
    print(a.proxies)
    proxie = a.proxies
    with open('proxies/proxies-tmp.txt', 'a') as f:
        for proxy in proxie:
            f.write(proxy + '\n')


class ProxyMiddleWare(object):
    """docstring for ProxyMiddleWare"""
    def __init__(self):
        self.index = 0
        self.proxys = []
        self.fail_map = {}
        self.f = open("proxies/proxies-boss.txt", "w")
        self.use_ips_map = {}

    def process_spider_exception(self, response, exception, spider):
        # Called when a spider or process_spider_input() method
        # (from other spider middleware) raises an exception.

        # Should return either None or an iterable of Response, dict
        # or Item objects.
        print(exception)

    def process_exception(self, request, exception, spider):
        self.mark_proxy_cannot_use(request)

    def process_request(self, request, spider):
        '''对request对象加上proxy'''
        proxy = self.get_random_proxy()
        # print("本次请求ip:" + proxy)
        request.meta['proxy'] = proxy

    def process_response(self, request, response, spider):
        '''对返回的response处理'''
        # 如果返回的response状态不是200，重新生成当前request对象
        # print("code = %d" % response.status)
        if response.status != 200:
            self.mark_proxy_cannot_use(request)
            proxy = self.get_random_proxy()
            # 对当前reque加上代理
            request.meta['proxy'] = proxy
            return request
        else:
            self.save_use_ip(request)
        return response

    def save_use_ip(self, request):
        """保存可用ip"""
        used = self.use_ips_map.get(request.meta["proxy"])
        if used:
            self.use_ips_map[request.meta["proxy"]] = used + 1
            if used == 3:
                self.f.write(request.meta["proxy"] + "/n")
                self.f.flush()
        else:
            self.use_ips_map[request.meta["proxy"]] = 1

    def mark_proxy_cannot_use(self, request):
        """标记纳西额请求失败的ip"""
        proxy = request.meta['proxy']
        hava = self.fail_map.get(proxy)
        if not hava:
            self.fail_map[hava] = 1
        else:
            if self.fail_map[hava] < 10:
                self.fail_map[hava] = self.fail_map[hava] + 1
            else:
                self.proxys.remove(hava)

    def get_random_proxy(self):
        '''随机从文件中读取proxy'''
        if not self.proxys:
            while 1:
                with open('proxies/proxies-tmp.txt', 'r') as f:
                    proxies = f.readlines()
                if proxies:
                    break
                else:
                    time.sleep(1)
        proxy = random.choice(proxies)
        # proxy = self.sequen_proxy(proxies)
        return proxy

    def sequen_proxy(self, proxies):
        """顺序读取ip"""
        if self.index < len(proxies):
            self.index += 1
        else:
            self.index = 0
        return proxies[self.index]