#!/usr/bin/env python3

"""
    时间日期型模块测试
    
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/10
    :version 1.0
"""

import calendar, datetime, time


# 存放的是 Apollo 11 登月时间
moon_datetime_a = datetime.datetime(1969, 7, 20, 20, 17, 17, 40)
moon_time = calendar.timegm(moon_datetime_a.utctimetuple())
time.strftime("%Y-%m-%dT%H:%M:%S", time.gmtime(moon_time))
# time.struct_time(tm_year=1970, tm_mon=1, tm_mday=1, tm_hour=0, tm_min=0, tm_sec=0, tm_wday=3, tm_yday=1, tm_isdst=0)
# 在上述时间之前的时间 time.gmtime() 函数不能进行解析
