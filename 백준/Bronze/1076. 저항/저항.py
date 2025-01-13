import sys
first = sys.stdin.readline().strip()
second = sys.stdin.readline().strip()
last = sys.stdin.readline().strip()

list = ['black','brown','red','orange','yellow','green','blue','violet','grey','white']

for i in range(len(list)):
    if list[i]==last:
        times = 10**i
    if list[i]==first:
        f = i
    if list[i]==second:
        s = i

print(times*10*f + times*s)