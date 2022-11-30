#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.

# python print문 안에서 ,와 + 차이 숙지 필요!
# + 는 concat같은 개념이라, 출력할 값을 이어붙이기 한것과 같음.
# , 는 출력할 값이 각각 분리되어 있는 개념.
def staircase(n):
    # Write your code here
    space = ' '
    sharp = '#'
    for i in range(1, n+1) :
        print(space * (n - i) + sharp * i)
        
if __name__ == '__main__':
    n = int(input().strip())

    staircase(n)