#!/usr/bin/env python3

"""
    图像压缩存储类
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/18
    :version 1.0
"""
import os
import pickle


class ImageError(Exception):
    pass


class CoordinateError(ImageError):
    pass


class NoFilenameError(Exception):
    pass


class SaveError(Exception):
    pass


class LoadError(Exception):
    pass


class ExportError(Exception):
    pass


class Image:
    def __init__(self, width, height, filename="", background="#FFFFFF"):
        self.filename = filename
        self.__background = background
        self.__data = {}
        self.__width = width
        self.__height = height
        self.__colors = {self.__background}

    @property
    def background(self):
        return self.__background
    
    @property
    def width(self):
        return self.__width
    
    @property
    def height(self):
        return self.__height
    
    @property
    def colors(self):
        return self.__colors
    
    def __getitem__(self, coordinate):
        """获取某个坐标下的颜色，可以使用项存取操作符 []"""
        self.__judge_coordinate(coordinate)
        return self.__data.get(tuple(coordinate), self.__background)
    
    def __setitem__(self, coordinate, color):
        self.__judge_coordinate(coordinate)
        if color == self.__background:
            self.__data.pop(tuple(coordinate), None)
        else:
            self.__data[tuple(coordinate)] = color
            self.__colors.add(color)
            
    def __judge_coordinate(self, coordinate):
        assert len(coordinate) == 2, "coordinate should be a 2-tuple"
        if (not (0 <= coordinate[0] < self.width) or
                not (0 <= coordinate[1] < self.height)):
            raise CoordinateError(str(coordinate))
        
    def __delitem__(self, coordinate):
        self.__judge_coordinate(coordinate)
        self.__data.pop(tuple(coordinate))
        
    def save(self, filename=None):
        """将图片对象保存到文件中"""
        if filename is not None:
            self.filename = filename
        if not self.filename:
            raise NoFilenameError()
        
        fh = None
        try:
            data = [self.width, self.height, self.__background, self.__data]
            fh = open(self.filename, "wb")
            pickle.dump(data, fh, pickle.HIGHEST_PROTOCOL)
        except(EnvironmentError, pickle.PicklingError) as err:
            raise SaveError(str(err))
        finally:
            if fh is not None:
                fh.close()
                
    def load(self, filename=None):
        """从文件中加载图片对象"""
        if filename is not None:
            self.filename = filename
        if not self.filename:
            raise NoFilenameError()
        
        fh = None
        try:
            fh = open(self.filename, "rb")
            data = pickle.load(fh)
            (self.__width, self.__height, self.__background, self.__data) = data
            self.__colors = (set(self.__data.values()) | {self.__background})
        except (EnvironmentError, pickle.UnpicklingError) as err:
            raise LoadError(str(err))
        finally:
            if fh is not None:
                fh.close()

    def __export_xpm(self, filename):
        """Exports the image as an XPM file if less than 8930 colors are
        used
        """
        name = os.path.splitext(os.path.basename(filename))[0]
        count = len(self.__colors)
        chars = [chr(x) for x in range(32, 127) if chr(x) != '"']
        if count > len(chars):
            chars = []
            for x in range(32, 127):
                if chr(x) == '"':
                    continue
                for y in range(32, 127):
                    if chr(y) == '"':
                        continue
                    chars.append(chr(x) + chr(y))
        chars.reverse()
        if count > len(chars):
            raise ExportError("cannot export XPM: too many colors")
        fh = None
        try:
            fh = open(filename, "w", encoding="ascii")
            fh.write("/* XPM */\n")
            fh.write("static char *{0}[] = {{\n".format(name))
            fh.write("/* columns rows colors chars-per-pixel */\n")
            fh.write('"{0.width} {0.height} {1} {2}",\n'.format(
                self, count, len(chars[0])))
            char_for_colour = {}
            for color in self.__colors:
                char = chars.pop()
                fh.write('"{char} c {color}",\n'.format(**locals()))
                char_for_colour[color] = char
            fh.write("/* pixels */\n")
            for y in range(self.height):
                row = []
                for x in range(self.width):
                    color = self.__data.get((x, y), self.__background)
                    row.append(char_for_colour[color])
                fh.write('"{0}",\n'.format("".join(row)))
            fh.write("};\n")
        except EnvironmentError as err:
            raise ExportError(str(err))
        finally:
            if fh is not None:
                fh.close()

    def export(self, filename):
        """导出图片到文件"""
        if filename.lower().endswith(".xpm"):
            self.__export_xpm(filename)
        else:
            raise ExportError("unsupported export format:" +
                              os.path.split(filename)[1])


if __name__ == '__main__':
    border_color = "#FF0000"  # red
    square_color = "#0000FF"  # blue
    width, height = 240, 60
    midx, midy = width // 2, height // 2  # x 除以 y，舍弃小数部分
    image = Image(width, height, "square_eye.img")
    for x in range(width):
        for y in range(height):
            if x < 5 or x >= width - 5 or y < 5 or y >= height -5:
                image[x, y] = border_color
            elif midx - 20 < x < midx + 20 and midy - 20 < y < midy + 20:
                image[x, y] = square_color
    image.save()
    image.export("square_eye.xpm")