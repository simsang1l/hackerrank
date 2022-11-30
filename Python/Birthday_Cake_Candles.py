import math
import os
import random
import re
import sys

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

# python에서 제공하는 함수를 이용
# max(list)를 통해 최대값 찾기
# list.count(max_value)를 통해 최대값 개수 세기 
def birthdayCakeCandles(candles):
    # Write your code here
    tallest = max(candles)
    tallest_cnt = candles.count(tallest)
    
    return tallest_cnt


# 풀이 방법
# 1. 리스트를 역수로 정렬 후 인덱스가 0번인 값이 최대값임
# 2. 정렬된 리스트에서 인덱스가 0번과 1번, 1번과 2번 ... 비교해가면서 최대값 수 찾기

# 특정 몇 문제에 대해 RunTime Error
# ex1. 리스트 안의 값이 모두 최대값일때
"""
def birthdayCakeCandles(candles):
    # Write your code here
    candles = sorted(candles, reverse = True)
    result = 1
    
    for i in range(len(candles)):
        
        if candles[i] == candles[i + 1]:
            result += 1
            continue
        else :
            break
        
        
    return result
"""     
    
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    candles_count = int(input().strip())

    candles = list(map(int, input().rstrip().split()))

    result = birthdayCakeCandles(candles)

    fptr.write(str(result) + '\n')

    fptr.close()