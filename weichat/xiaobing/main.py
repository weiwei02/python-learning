#!/usr/bin/env python3

"""
    小冰智能回复主方法
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""

# from weichat.xiaobing import MessageEvent, load_components
from weichat.xiaobing import load_components, MessageEvent
import time


def main():
    load_components(MessageEvent)
    me = MessageEvent.mainEvent
    me.start_all()
    while True:
        time.sleep(1)


if __name__ == '__main__':
    main()