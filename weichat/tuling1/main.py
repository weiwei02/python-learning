#!/usr/bin/env python3

"""
    微信机器人入口客户端
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/11
    :version 1.0
"""
import itchat
import weichat.tuling1.RemoteTuling as tuling


def main():
    @itchat.msg_register(itchat.content.TEXT)
    def tuling_reply(msg):
        # 为了保证在图灵Key出现问题的时候仍旧可以回复，这里设置一个默认回复
        defaultReply = '人家不懂你在说什么 '
        # 如果图灵Key出现问题，那么reply将会是None
        reply = tuling.get_response(msg['Text'])
        # a or b的意思是，如果a有内容，那么返回a，否则返回b
        # 有内容一般就是指非空或者非None，你可以用`if a: print('True')`来测试
        return reply or defaultReply

    # 为了让实验过程更加方便（修改程序不用多次扫码），我们使用热启动
    itchat.auto_login(hotReload=True)
    itchat.run()


if __name__ == '__main__':
    main()