#!/usr/bin/python3
import sys
txt = sys.stdin.read()[:-1]
fw = ''.join([chr(ord(ch) + 65248) if 21 <= ord(ch) <= 126 else ch for ch in txt])
print(fw)