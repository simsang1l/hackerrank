import math
import os
import random
import re
import sys

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

# Key Point
# 1. arr에 5개  integer 값을 받는다
# arr의 최대 합, 최소 합 구하기

def miniMaxSum(arr):
    # Write your code here
    total_arr = sum(arr)
    arr = sorted(arr)
    max_arr = total_arr - arr[0]
    min_arr = total_arr - arr[4]
    
    return print(min_arr, max_arr)
    
if __name__ == '__main__':

    arr = list(map(int, input().rstrip().split()))

    miniMaxSum(arr)
