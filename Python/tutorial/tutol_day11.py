#!/bin/python3

import math
import os
import random
import re
import sys



if __name__ == '__main__':
    
    arr = []

    value = 0
#    max_val = 0
    
    for _ in range(6):
        arr.append(list(map(int, input().rstrip().split())))
    
    for i in range(4):
        for j in range(4):
            #print(arr[i][j] , arr[i][j+1], arr[i][j+2] , arr[i+1][j+1] , arr[i+2][j] , arr[i+2][j+1] , arr[i+2][j+2])
            value = arr[i][j] + arr[i][j+1]+ arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
            max_val = value
            #print(value)
            if max_val < value:
                max_val = value 
    
    print(max_val)
        