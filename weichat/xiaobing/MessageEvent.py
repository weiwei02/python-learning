#!/usr/bin/env python3

"""
    消息事件处理服务
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""
# coding=utf8
import itchat
from itchat.content import *
import queue
import threading


xiaobingQueue = queue.Queue(maxsize=100)
msgQueue = queue.Queue(maxsize=100)


class MessageEvent:
    def __init__(self):
        self.xiaobingQueue = queue.Queue(maxsize=100)
        self.msgQueue = queue.Queue(maxsize=100)

    def auto_reply_from_xiaobing(self):
        """开启小冰自动回复功能"""
        raise NotImplementedError()

    def start_all(self):
        itchat.auto_login(hotReload=True)
        self.auto_reply_from_xiaobing()
        # itchat.start_receiving()
        thred = threading.Thread(target=itchat.run)
        thred.setDaemon(True)
        thred.start()


mainEvent = MessageEvent()
# class MessageEvent:
#     @itchat.msg_register([TEXT, MAP, CARD, NOTE, SHARING])
#     def text_reply(self, msg):
#         itchat.send('%s: %s' % (msg['Type'], msg['Text']), msg['FromUserName'])
#
#     # 以下四类的消息的Text键下存放了用于下载消息内容的方法，传入文件地址即可
#     @itchat.msg_register([PICTURE, RECORDING, ATTACHMENT, VIDEO])
#     def download_files(self, msg):
#         msg['Text'](msg['FileName'])
#         return '@%s@%s' % ({'Picture': 'img', 'Video': 'vid'}.get(msg['Type'], 'fil'), msg['FileName'])
#
#     # 收到好友邀请自动添加好友
#     @itchat.msg_register(FRIENDS)
#     def add_friend(self, msg):
#         itchat.add_friend(**msg['Text']) # 该操作会自动将新好友的消息录入，不需要重载通讯录
#         itchat.send_msg('Nice to meet you!', msg['RecommendInfo']['UserName'])
#
#     # 在注册时增加isGroupChat=True将判定为群聊回复
#     @itchat.msg_register(TEXT, isGroupChat=True)
#     def groupchat_reply(self, msg):
#         if msg['isAt']:
#             itchat.send(u'@%s\u2005I received: %s' % (msg['ActualNickName'], msg['Content']), msg['FromUserName'])