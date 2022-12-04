# PM일때는 시간 + 12
# AM일때는 12는 0으로 나머지는 그대로 시간 입력 

import math
import os
import random
import re
import sys

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.

def timeConversion(s):
    # Write your code here
    
    hour, minute, second_ampm = s.split(':')
    
    if second_ampm[2:] == 'PM' and hour == '12':
        hour = '12'
    elif second_ampm[2:] == 'AM' and hour == '12':
        hour = '00'
    elif second_ampm[2:] == 'PM' and hour != '12':
        hour = str(int(hour) + 12)
            
    conversion = hour + ':' + minute + ':' + second_ampm[0:2]
    
    return conversion

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = timeConversion(s)

    fptr.write(result + '\n')

    fptr.close()