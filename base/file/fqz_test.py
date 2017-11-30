#!/usr/bin/env python3
"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/27
    :version 1.0
"""
import optparse
import datetime
import os


LOG_PATH = "/home/weblogic/dailyLog/"
TOMCAT_PATH = "/opt/apache-tomcat-7.0.55/bin/"


def parser_args():
    parser = optparse.OptionParser()
    parser.add_option("-l", "--logs", dest="logs", type="string", help=("指定要对日志所做的操作 tail 查看，clean 清空日志，默认为查看日志"))
    parser.add_option("-s", "--server", dest="server", type="string", help=("指定对服务要做的操作  start 启动服务"))
    parser.set_defaults(logs="", server="")
    return parser.parse_args()


opts, args = parser_args()
if opts.logs == "clean":
    files = os.listdir(LOG_PATH)
    if input("确定要清空日志信息？y/n") == "y":
        for finame in files:
            os.system("> " + finame)
elif opts.logs == "tail":
    now = datetime.datetime.now()
    time = now.strftime("%Y-%m-%d")
    os.system("tail -f -n 1000 " + LOG_PATH + "antiFraud-" + time + ".log")
if opts.server == "start":
        out = os.popen(TOMCAT_PATH + "startup.sh")
        lines = out.readlines()
        if lines[len(lines) - 1].count("Tomcat started."):
            print("启动服务成功")
        else:
            print("启动服务失败")
            print("".join(lines))
elif opts.server == "restart" or opts.server == "stop":
    print("本脚本暂不支持")
else:
    print("请输入指令 -h 查看帮助")
