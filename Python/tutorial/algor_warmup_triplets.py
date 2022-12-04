#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b):
    # Write your code here
    a_score = 0 
    b_score = 0
    for i in len(a):
        if a[i] > b[i] : 
            a_score += 1 
        elif a[i] < b[i]:
            b_score += 1
        elif a[i] == b[i]:
            pass
    
    print(a_score, b_score)

a = [5, 6, 7]
if __name__ == '__main__':
    for i in range(1, len(a)+1):
        print(i)
          
    #a = list(map(int, input().rstrip().split()))

    #b = list(map(int, input().rstrip().split()))

    #result = compareTriplets(a, b)

