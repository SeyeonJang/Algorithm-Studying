import sys
s = [0,0,0]
for i in range(3):
    n = int(sys.stdin.readline().strip())
    for j in range(n):
        s[i] += int(sys.stdin.readline().strip())

for i in range(3):
    if s[i]==0: print('0')
    elif s[i]>0: print('+')
    else: print('-')