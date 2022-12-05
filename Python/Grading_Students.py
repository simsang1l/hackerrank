# 0 ~ 100 점수를 받는다
# 40점 이하는 낙제 점수
# round rule
## grade와 다음 5의 배수와의 차이가 3이하이면 다음 배수로 반올림
## grade가 38미만이고 반올림이 일어나지않으면 낙제 점수

import math
import os
import random
import re
import sys

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradingStudents(grades):
    # Write your code here
    final_grade = []
    for grade in grades:
        portion = grade // 5 
        multiple_of_5 = (portion + 1) * 5
        
        if grade < 38 :
            final_grade.append(grade)
        elif (multiple_of_5 - grade) < 3:
            final_grade.append(multiple_of_5)
        else :
            final_grade.append(grade)
        
    return final_grade
        
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    grades_count = int(input().strip())

    grades = []

    for _ in range(grades_count):
        grades_item = int(input().strip())
        grades.append(grades_item)

    result = gradingStudents(grades)

    fptr.write('\n'.join(map(str, result))) # map 함수를 쓰고 있으니 list형태로 전달해줘야 하지 않을까??
    fptr.write('\n')

    fptr.close()