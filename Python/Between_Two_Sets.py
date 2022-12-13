import math
import os
import random
import re
import sys
from math import gcd
from functools import reduce

#
# Complete the 'getTotalX' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

# 첫번째 배열의 공배수들
# 두번째 배열의 공약수들
# 두개 배열에서 공통되는 원소의 수

def getTotalX(a, b):
    # Write your code here
    lcm = reduce(lambda x, y : x*y // gcd(x, y), a) # 첫번째 array의 최소공배수
    cd = reduce(lambda x, y, : gcd(x, y), b) # 두번째 array의 최대공약수
    
    cnt = 0 
    # 1에서 최대공약수 까지 반복
    for i in range(1, cd//lcm + 1) :
        # 최대공약수가 최소공배수 * i를 했을 때 0이라면 정답개수 1씩 증가
        if cd % (lcm * i) == 0: 
            cnt += 1
            
    return cnt