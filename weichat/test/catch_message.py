#!/usr/bin/env python3

"""
    1. 实现微信消息的抓取
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""
import itchat,time
import queue
import _thread

XIAOBING_ID = 'xiaoice-ms'
msgQueue = queue.Queue(maxsize=100)


@itchat.msg_register(itchat.content.TEXT, isMpChat=True)
def print_content(msg):
    if msg["FromUserName"] == XIAOBING_ID:
        msgQueue.put(msg["Text"])
    print("公众号消息", msg["Text"])


@itchat.msg_register(itchat.content.TEXT, isFriendChat=True)
def print_contents(msg):
    print(msg)
    itchat.send_msg(msg["Text"], toUserName="@3c0f48b3cec6e9d90fe03a8a0edb78eb")
    return msgQueue.get()

itchat.auto_login(hotReload=True)
itchat.start_receiving()
# mps = itchat.get_mps()
#
# a = itchat.send_msg("你是谁", toUserName="@3c0f48b3cec6e9d90fe03a8a0edb78eb")
#
# message = itchat.get_msg()
# print("回复信息: ", message)

_thread.start_new_thread(itchat.run, ())


