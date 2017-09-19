#!/usr/bin/env python3

"""
    微信群回复方法
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/14
    :version 1.0
"""
from .MessageEvent import *

# 需要设置回复的群
REPLY_GROUPS_NAMES = []
IS_AT = False


@itchat.msg_register([TEXT, MAP, CARD, NOTE, SHARING, PICTURE, RECORDING, ATTACHMENT, VIDEO], isGroupChat=True)
def text_reply(msg):
    queMsg = {"ToUserName": msg['ActualNickName'], TEXT: "", "FromUserName": msg["FromUserName"]}
    if len(REPLY_GROUPS_NAMES) != 0 and msg['ToUserName'] not in REPLY_GROUPS_NAMES:
        return
    if IS_AT and not msg['isAt']:
        return
    if msg['Type'] in [TEXT, MAP, CARD, NOTE, SHARING]:
        queMsg[TEXT] = msg['Content']
        queMsg["Type"] = TEXT
    else:
        # 执行消息下载回调函数
        msg[TEXT](msg['FileName'])
        queMsg[TEXT] = '@%s@%s' % ({'Picture': 'img', 'Video': 'vid'}.get(msg['Type'], 'fil'), msg['FileName'])
    msgQueue.put(queMsg)


