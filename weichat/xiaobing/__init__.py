#!/usr/bin/env python3

"""
    使用智能的微软小冰作为机器人，来进行微信的回复操作
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""

from weichat.xiaobing import Friends, XiaoBing, Groups


def load_components(Message):
    Message.MessageEvent.auto_reply_from_xiaobing = XiaoBing.auto_reply_from_xiaobing