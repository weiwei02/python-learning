# -*- coding: utf-8 -*-

# Scrapy settings for splider_test project
#
# For simplicity, this file contains only settings considered important or
# commonly used. You can find more settings consulting the documentation:
#
#     http://doc.scrapy.org/en/latest/topics/settings.html
#     http://scrapy.readthedocs.org/en/latest/topics/downloader-middleware.html
#     http://scrapy.readthedocs.org/en/latest/topics/spider-middleware.html

BOT_NAME = 'splider_test'

SPIDER_MODULES = ['splider_test.spiders']
NEWSPIDER_MODULE = 'splider_test.spiders'
FEED_EXPORT_ENCODING = 'utf-8'

# 导出文件配置
# FEED_EXPORTERS = {
#     'csv': 'scrapy.exporters.CsvItemExporter',
# }
# FEED_FORMAT = 'csv'
# FEED_URI = 'boss.cvs'
# Crawl responsibly by identifying yourself (and your website) on the user-agent
#USER_AGENT = 'splider_test (+http://www.yourdomain.com)'

# Obey robots.txt rules  不遵守robot协议
ROBOTSTXT_OBEY = False

# Configure maximum concurrent requests performed by Scrapy (default: 16)
#为了达到更高的抓取效率，可以禁用Autothrottle扩展和增加并发请求的最大数量，以及设置下载超时
CONCURRENT_REQUESTS = 50
CONCURRENT_REQUESTS_PER_DOMAIN = 50
# AUTOTHROTTLE_ENABLED = False
DOWNLOAD_TIMEOUT = 60
# Configure a delay for requests for the same website (default: 0)
# See http://scrapy.readthedocs.org/en/latest/topics/settings.html#download-delay
# See also autothrottle settings and docs
DOWNLOAD_DELAY = 2
# The download delay setting will honor only one of:
#CONCURRENT_REQUESTS_PER_DOMAIN = 16
#CONCURRENT_REQUESTS_PER_IP = 16

# Disable cookies (enabled by default)
COOKIES_ENABLED = True

# Disable Telnet Console (enabled by default)
#TELNETCONSOLE_ENABLED = False

# Override the default request headers:
DEFAULT_REQUEST_HEADERS = {
            'Accept': '*/*',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',
            'Accept-Encoding': 'gzip, deflate, sdch',
            'Accept-Language': 'zh-CN,zh;q=0.8'
        }

# Enable or disable spider middlewares
# See http://scrapy.readthedocs.org/en/latest/topics/spider-middleware.html
SPIDER_MIDDLEWARES = {
   'splider_test.middlewares.SpliderTestSpiderMiddleware': 543,
   'splider_test.middlewares.UserAgentMiddleware': 500,
}

# Enable or disable downloader middlewares
# See http://scrapy.readthedocs.org/en/latest/topics/downloader-middleware.html
DOWNLOADER_MIDDLEWARES = {
#    'myproxies.middlewares.MyCustomDownloaderMiddleware': 543,
#      'scrapy.contrib.downloadermiddleware.httpproxy.HttpProxyMiddleware': None,
     'splider_test.Proxy.ProxyMiddleWare': 125,
     # 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware': None
}

# Enable or disable extensions
# See http://scrapy.readthedocs.org/en/latest/topics/extensions.html
#EXTENSIONS = {
#    'scrapy.extensions.telnet.TelnetConsole': None,
#}

# Configure item pipelines
# See http://scrapy.readthedocs.org/en/latest/topics/item-pipeline.html
ITEM_PIPELINES = {
    'splider_test.pipelines.JSONLinePipeLine': 300,
    'splider_test.pipelines.CSVPipeLine': 301,
}
RETRY_TIMES = 10

# Enable and configure the AutoThrottle extension (disabled by default)
# See http://doc.scrapy.org/en/latest/topics/autothrottle.html
#AUTOTHROTTLE_ENABLED = True
# The initial download delay
#AUTOTHROTTLE_START_DELAY = 5
# The maximum download delay to be set in case of high latencies
#AUTOTHROTTLE_MAX_DELAY = 60
# The average number of requests Scrapy should be sending in parallel to
# each remote server
#AUTOTHROTTLE_TARGET_CONCURRENCY = 1.0
# Enable showing throttling stats for every response received:
#AUTOTHROTTLE_DEBUG = False

# Enable and configure HTTP caching (disabled by default)
# See http://scrapy.readthedocs.org/en/latest/topics/downloader-middleware.html#httpcache-middleware-settings
#HTTPCACHE_ENABLED = True
#HTTPCACHE_EXPIRATION_SECS = 0
#HTTPCACHE_DIR = 'httpcache'
#HTTPCACHE_IGNORE_HTTP_CODES = []
#HTTPCACHE_STORAGE = 'scrapy.extensions.httpcache.FilesystemCacheStorage'
