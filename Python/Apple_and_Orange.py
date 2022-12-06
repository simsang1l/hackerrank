#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'countApplesAndOranges' function below.
#
# The function accepts following parameters:
#  1. INTEGER s 샘의 집 시작 점
#  2. INTEGER t 샘의 집 끝점
#  3. INTEGER a 사과나무 위치
#  4. INTEGER b 오렌지나무 위치
#  5. INTEGER_ARRAY apples 사과나무로부터 떨어진 사과 거리
#  6. INTEGER_ARRAY oranges 오렌지나무로부터 떨어진 오렌지 거리
# output : 샘집안에 떨어진 사과의 수, 샘 집안에 떨어진 오렌지의 수

# KeyPoint
## 나무로부터 떨어진 거리를 따로 고려하지 않고 더하기만 해도 위치에 변화가 없음
## 집 거리안에 들어오는 과일 수 구하기

def countApplesAndOranges(s, t, a, b, apples, oranges):
    # Write your code here
    #result_apple = 0 
    #result_orange = 0
    sam_apple = []
    sam_orange = []

    for d in apples :
        
        if (a + d) in range(s, t+1) :
            sam_apple.append(d)    
            
    for d in oranges:
        if (b + d) in range(s, t+1) :
            sam_orange.append(d)
    
    print(len(sam_apple))
    print(len(sam_orange))
    #return len(sam_apple), len(sam_orange)

    
if __name__ == '__main__':
    first_multiple_input = input().rstrip().split()

    s = int(first_multiple_input[0])

    t = int(first_multiple_input[1])

    second_multiple_input = input().rstrip().split()

    a = int(second_multiple_input[0])

    b = int(second_multiple_input[1])

    third_multiple_input = input().rstrip().split()

    m = int(third_multiple_input[0])

    n = int(third_multiple_input[1])

    apples = list(map(int, input().rstrip().split()))

    oranges = list(map(int, input().rstrip().split()))

    countApplesAndOranges(s, t, a, b, apples, oranges)