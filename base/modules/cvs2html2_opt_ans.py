#!/usr/bin/env python3
import optparse
"""
    利用 optparse 模块快速构建命令行程序 自动设置 -x 或 --xaxx 命令参数
    
  :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
  :sine 2017/8/10
  :version 1.0
"""


def main():
    parser = optparse.OptionParser()
    parser.add_option("-w", "--maxwidth", dest="maxwidth", type="int", help=("the maximum number of character that can "
                                                                             "be out put to string fields [default:%default]"))
    parser.add_option("-f", "--format", dest="format", help=("the format used for outputting numbers "
                                                             "[default:%default]"))
    parser.set_defaults(maxwidth=100, format=".0f")
    opts, args = parser.parse_args()
    print("opt", opts)
    print("arg", args)


main()