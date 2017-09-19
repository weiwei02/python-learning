#!/usr/bin/env python3

"""
    好友消息处理
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""
from .MessageEvent import *

friendsList = []


def get_user_name(param):
    memberList = itchat.originInstance.memberList
    for me in memberList:
        if me['UserName'] == param:
            return me['NickName']


@itchat.msg_register([TEXT, MAP, CARD, NOTE, SHARING, PICTURE, RECORDING, ATTACHMENT, VIDEO], isFriendChat=True)
def receive_from_friends(msg):
    queMsg = {"FromUserName": msg["FromUserName"], TEXT: ""}
    if msg['Type'] in [TEXT, MAP, CARD, NOTE, SHARING]:
        queMsg[TEXT] = '%s' % (msg['Text'])
    else:
        # 执行消息下载回调函数
        msg[TEXT](msg['FileName'])
        queMsg[TEXT] = '@%s@%s' % ({'Picture': 'img', 'Video': 'vid'}.get(msg['Type'], 'fil'), msg['FileName'])
    print("来自%s的消息: " % get_user_name(msg['FromUserName']) + queMsg[TEXT])
    msgQueue.put(queMsg)


def get_friends_list():
    global friendsList
    friendsList = itchat.get_friends(update=True)