n = int(input())
times = list(map(int, input().split()))
y,m = 0,0

for i in range(n):
    y += 10 * (times[i]//30+1)
    m += 15 * (times[i]//60+1)

if m<y: print('M',m)
elif m==y: print('Y M',y)
else: print('Y',y)