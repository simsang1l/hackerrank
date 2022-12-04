#!/bin/python3

import math
import os
import random
import re
import sys



if __name__ == '__main__':
    N = int(input().strip())

    print(N % 2)
    print(N in range(2, 6)) 
    print(N in range(6, 21))

    if N % 2 == 1 : 
        print('1 Weird')
    if N % 2 == 0 and N in range(2, 6):
        print('Not Weird')
    elif N % 2 == 0 and N in range (6, 21):
        print('3 Weird')
    elif N % 2 == 0 and N > 20:
        print('Not Weird')
