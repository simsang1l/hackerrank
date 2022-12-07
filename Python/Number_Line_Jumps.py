#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'kangaroo' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER x1
#  2. INTEGER v1
#  3. INTEGER x2
#  4. INTEGER v2
#
# x1 : start location 1
# x2 : start location 2
# v1 : jump by v1 at x1
# v2 : jump by v2 at x2
# x1에서 v1만큼 점프 했을 때와 x2에서 v2만큼 점프했을 때 언젠가 같은 위치에 있으면 YES 아니면 NO

def kangaroo(x1, v1, x2, v2):
    # Write your code here

    # x1이 무조건 x2보다 작으므로 v1이 v2보다 커야 따라잡고 같은 위치에 있을 수 있다.
    if v2 > v1 : 
        return 'NO'
    # x1이 무조건 x2보다 작으므로 같은 속도로 간다면 따라 잡고 같은 위치에 있을 수 없다.
    elif v2 == v1 and x1 < x2 :
        return 'NO'
    
    while True :
        # x1에 v1만큼 x2에 v2만큼 이동하여 현재 위치를 저장
        x1 += v1
        x2 += v2
        
        # x1과 x2가 같은 위치에 있으면 YES return
        if x1 == x2 :
            return 'YES'
            break
        # x1이 x2를 넘어선다면 더이상 같은 위치에 있을 수 없으므로 NO return
        elif x1 > x2 :
            return 'NO'
            break
        
         
        
        
        
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    x1 = int(first_multiple_input[0])

    v1 = int(first_multiple_input[1])

    x2 = int(first_multiple_input[2])

    v2 = int(first_multiple_input[3])

    result = kangaroo(x1, v1, x2, v2)

    fptr.write(result + '\n')

    fptr.close()