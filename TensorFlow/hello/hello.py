#!/usr/bin/env python3

"""
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/11/30
    :version 1.0
"""
import tensorflow as tf


def hello():
    hi = tf.constant('Hello, TensorFlow!')
    sess = tf.Session()
    sess.run(hi)

if __name__ == '__main__':
    hello()