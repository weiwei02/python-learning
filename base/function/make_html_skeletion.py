#!/usr/bin/env python3

"""创建html模板
20170810 00:10:18
"""
import datetime
import xml.sax.saxutils as saxutils

# 版权字符串
COPYRIGHT_TEMPLATE = "Copyright (c) {0} {1}. All right reserved"
# 样式表引用模版
STYLESHEET_TEMPLATE = '<link rel="stylesheet" type="text/css" media= "all" href="{0}"/>\n'


def read_template():
    """读取模版html"""
    lines = ""
    try:
        # lines.join(open("template.html", "r", encoding="UTF-8").readlines(2))
        for line in open("template.html", encoding="UTF-8"):
            lines += line
    except Exception as e:
        print(e)
    return lines


# html模版
HTML_TEMPLATE = read_template()


class CancelledError(Exception):
    pass


def get_string(message, name="string", default=None, minimum_length=0, maximum_length=80):
    """获取一个用户输入的字符串
    :param message 输入提示信息
    :param name 变量名
    :param default 默认值
    :param minimum_length 最小位数
    :param maximum_length 最大位数
    
    :return string
    """
    message += ":" if default is None else "[{0}]:".format(default)
    while True:
        try:
            line = input(message)
            if not line:
                if default is not None:
                    return default
                if minimum_length == 0:
                    return ""
                else:
                    raise ValueError("{0} may not be empty".format(name))
            if not (minimum_length <= len(line) <= maximum_length):
                    raise ValueError("{name} must have at least"
                                     "{minimum_length} and at most"
                                     "{maximum_length} characters".format(**locals()))
            return line
        except ValueError as err:
            print("ERROR", err)


def get_integer(message, name="integer", default=None, minimum=0, maximum=100, allow_zero=True):
    message += ":" if default is None else "[{0}]:".format(default)
    while True:
        try:
            num = int(input(message))
            if num == 0 and not allow_zero:
                raise ValueError("{name} not allow zero")
            if minimum <= num <= maximum:
                return num
            else:
                raise ValueError("{name} must have at least"
                                 "{minimum} and at most"
                                 "{maximum} integer".format(**locals()))
        except ValueError as err:
            if default is not None:
                return default


def populate_infomation(information):
    """填充待补充的信息"""
    name = get_string("Enter your name (for copyright)", "name", information["name"])
    if not name:
        raise CancelledError
    year = get_integer("Enter copyright year", "year", information["year"], 2000, datetime.date.today().year + 1, True)
    if year == 0:
        raise CancelledError
    filename = get_string("Enter filename", "filename")
    if not filename:
        raise CancelledError
    if not filename.endswith((".html", ".htm")):
        filename += ".html"
    title = get_string("Enter title", "title")
    if not title:
        raise CancelledError
    description = get_string("Enter description", "description")
    keywords = get_string("Enter keywords", "keywords")
    stylesheet = get_string("Enter stylesheet", "stylesheet")
    body = get_string("Enter body", "body")
    information.update(name=name, year=year, filename=filename, title=title, description=description,
                       keywords=keywords, stylesheet=stylesheet, body=body)


def make_html_skeleton(name=None, year=datetime.date.today().year, filename=None, title=None, description=None,
                       keywords=None, stylesheet=None, body=None):
    """格式化并将用户的html信息写入模版，并将模版写入到新文件中"""
    copyright = COPYRIGHT_TEMPLATE.format(year, saxutils.escape(name))
    title = saxutils.escape(title)
    description = saxutils.escape(description)
    keywords = ",".join([saxutils.escape(k) for k in keywords]) if keywords else ""
    stylesheet = (STYLESHEET_TEMPLATE.format(saxutils.escape(stylesheet))) if stylesheet else ""
    html = HTML_TEMPLATE.format(**locals())
    # 写入文件保存
    fh = None
    try:
        fh = open(filename, "w", encoding="UTF-8")
        fh.write(html)
    except EnvironmentError as err:
        print("Error",err)
    else:
        print("saved skeleton ", filename)
    finally:
        if fh is not None:
            fh.close()


def main():
    """设置初始信息，并构造一个循环
    在每次的循环中，用户都有机会为HTML页面输入一些期望生成的信息
    Skeleton n. 骨架
    """
    information = dict(name=None, year=datetime.date.today().year, filename=None, title=None, description=None,
                       keywords=None, stylesheet=None, body=None)
    while True:
        try:
            print("\n Make HTML Skeleton\n")
            populate_infomation(information)
            make_html_skeleton(**information)
        except CancelledError:
            print("Cancelled")
        if(get_string("\nCreate another(y/n)?", default="y").lower()) not in {"y", "yes"}:
            break


main()
