#!/usr/bin/env python

from subprocess import call
import sys

from p4 import PROGRAM

if __name__ == '__main__':
    call([PROGRAM, 'render', sys.argv[1], '640', '480'])
    call(['open', 'output.png'])
