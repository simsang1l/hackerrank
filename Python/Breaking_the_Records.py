#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

# lowest와 highest의 수가 바뀐 횟수를 구하는 방법
# highest와 lowest를 scores[0]으로 초기화함.
# --> lowest의 경우 가장 작은 값이 계속 갱신되어야 하므로 특정 숫자로 초기화 불가
# Explanation 0을 참고했을 때, 초기 lowest, highest의 값이 입력값이므로 처음 값으로 초기화


def breakingRecords(scores):
    # Write your code here
    
    h_idx = 0
    l_idx = 0
    highest, lowest = scores[0], scores[0]
    for score in scores :
        
        if score > highest:
            highest = score
            h_idx += 1 
        elif score < lowest :
            lowest = score
            l_idx += 1
            
    return h_idx, l_idx
    
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    scores = list(map(int, input().rstrip().split()))

    result = breakingRecords(scores)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
