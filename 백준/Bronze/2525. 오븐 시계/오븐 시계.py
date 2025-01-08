import sys
hour, min = map(int, input().split())
c = int(sys.stdin.readline())

if min+c<60: print(hour, min+c)
else:
    n_min = (min+c)%60
    hour += (min+c)//60
    if hour>23:
        hour-=24
    print(hour, n_min)