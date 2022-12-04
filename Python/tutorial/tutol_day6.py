# Enter your code here. Read input from STDIN. Print output to STDOUT

space = int(input())
S = input()
S_ = input() 

even = ''
odd = '' 

for idx, i in enumerate(S):
    
    if idx % 2 == 0 :
        even += i
         
    elif idx % 2 != 0 :
        odd += i


print(even, '', odd)
