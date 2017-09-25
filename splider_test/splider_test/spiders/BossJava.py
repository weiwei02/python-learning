#!/usr/bin/env python3

"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/23
    :version 1.0
"""
import scrapy
import json
from splider_test.items import BossItem, BossDetail


class BossJava(scrapy.Spider):
    name = "boss"
    allowed_domains = ["zhipin.com"]

    def start_requests(self):
        urls = [
            'https://www.zhipin.com/c100010000-p100101/?page=5',
            "https://www.zhipin.com/c100010000-p100302/?page=9"
        ]
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse_list)

    def parse_detail(self, response):
        selector = response.selector
        bossDetail = response.meta["boss"]
        # bossDetail["id"] = response.url.split("/")[-1].split(".")[0]
        bossDetail["job_sec"] = selector.xpath("//div[@class='job-sec']/div/text()").extract()
        yield bossDetail

    def parse_list(self, response):
        selector = response.selector
        job_list = selector.xpath("//div[@class='job-list']/ul/li")
        for job in job_list:
            boss = BossItem()
            name = self.parse_job_info(boss, job)
            detail_page = response.urljoin(name.xpath("@href").extract_first())
            yield scrapy.Request(detail_page, callback=self.parse_detail, meta={"boss": boss})

        next_page = selector.xpath("//div[@class='page']/a[@class='next']/@href").extract_first()
        if next_page is not None:
            next_page = response.urljoin(next_page)
            yield scrapy.Request(next_page, callback=self.parse_list)

    def parse_job_info(self, boss, job):
        job_primary = job.xpath("div[@class='job-primary']")
        info_primary = job_primary.xpath("div[@class='info-primary']")
        name = info_primary.xpath("h3[@class='name']/a")
        address = info_primary.xpath("p")
        info_company = job_primary.xpath("div[@class='info-company']/div")
        job_time = job.xpath(".//span[@class='time']/text()")
        boss["name"] = name.xpath("text()").get()
        boss["id"] = name.xpath("@href").extract_first().split("/")[-1].split(".")[0]
        boss["salary"] = name.xpath("span/text()").get()
        boss["city"] = address.xpath("text()")[0].get()
        boss["experience"] = address.xpath("text()")[1].get()
        boss["background"] = address.xpath("text()")[2].get()
        boss["company"] = info_company.xpath("h3/a/text()").get()
        boss["time"] = job_time.get()
        return name

