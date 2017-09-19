#!/usr/bin/env python3

"""
    小冰操作
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""
from .MessageEvent import *
import time
import threading

# XIAOBING_ID = 'xiaoice-ms'
XIAOBING_ID = '@4c8d3aed2779105d13455d3a30f8f2d0'


def hava_mp_xiaobing():
    mps = itchat.get_mps(update=True)
    for mp in mps:
        if mp["PYQuanPin"] == 'xiaobing':
            global XIAOBING_ID
            XIAOBING_ID = mp["UserName"]
            print(XIAOBING_ID)
            return
    raise ValueError("没有关注小冰，无法使用小冰转发")


def send_to_xiaobing(msg):
    itchat.send(msg, XIAOBING_ID)


@itchat.msg_register([TEXT, MAP, CARD, NOTE, SHARING, PICTURE, RECORDING, ATTACHMENT, VIDEO], isMpChat=True)
def receive_from_xiaobing(msg):
    queMsg = 'no'
    if msg["FromUserName"] == XIAOBING_ID:
        if msg['Type'] in [TEXT, MAP, CARD, NOTE, SHARING]:
            queMsg = '%s' % (msg['Text'])
        else:
            msg[TEXT](msg['FileName'])
            queMsg = '@%s@%s' % ({'Picture': 'img', 'Video': 'vid'}.get(msg['Type'], 'fil'), msg['FileName'])
        if xiaobingQueue.qsize() <= msgQueue.qsize():
            xiaobingQueue.put(queMsg)
        print("小冰回复：", queMsg)


def auto_reply_from_xiaobing(self):
    hava_mp_xiaobing()

    def listen():
        global from_msg
        while True:
            try:
                # print("xiaobing: {0} , msg: {1}".format(xiaobingQueue.qsize(), msgQueue.qsize()))
                from_msg = msgQueue.get()
                while xiaobingQueue.qsize() > 0:
                    forward_message(from_msg, xiaobingQueue.get(block=False))
                send_to_xiaobing(from_msg[TEXT])
                re_msg = xiaobingQueue.get()
                forward_message(from_msg, re_msg)
                # 如果小冰有其它回复，无阻塞获取已过期的消息
                while xiaobingQueue.qsize() > 0:
                    forward_message(from_msg, xiaobingQueue.get(timeout=1))
            except queue.Empty:
                re_msg = {"Text": "人家感觉身心疲惫，是否允许人家休息一下"}
                forward_message(from_msg, re_msg)

    def forward_message(source_msg, xiaobing_msg):
        """转发 小冰消息"""
        if source_msg.get("ToUserName"):
            if source_msg.get('Type'):
                return itchat.send(u'@%s\u2005 %s' % (source_msg["ToUserName"], xiaobing_msg), toUserName=source_msg["FromUserName"])
        itchat.send_msg(xiaobing_msg, toUserName=source_msg["FromUserName"])

    auto_thread = threading.Thread(target=listen)
    auto_thread.setDaemon(True)
    auto_thread.start()