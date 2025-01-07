import sys

t = int(sys.stdin.readline())
nums = []
for i in range(t):
    a, b = sys.stdin.readline().rstrip().split(' ')
    print(int(a)+int(b))