#!/usr/bin/env python3

"""图灵机器人远程请求
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""
import requests

# 50bca1354b674b118a32aa237f50f046  九妹
KEY = '8edce3ce905a4c1dbb965e6b35c3834d'
API_URL = 'http://www.tuling123.com/openapi/api'
# 机器人名字
U_ID = '九妹'


def get_response(msg):
    """获取机器人的回复信息
    
    :param msg 用户的发送消息
    """
    data = {'key': KEY, 'info': msg, 'userid': U_ID }
    try:
        re_msg = requests.post(API_URL, data=data).json()
        return re_msg.get("text")
    except Exception as e:
        print(e)
        return