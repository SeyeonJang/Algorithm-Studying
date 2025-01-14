n = int(input())
eng = 'abcdefghijklmnopqrstuvwxyz'
players = [0 for i in range(26)]
ans = ''

for i in range(n):
    player = input()
    for j in range(26):
        if eng[j]==player[0]:
            players[j]+=1
            break

for i in range(26):
    if players[i]>=5:
        ans+=eng[i]
if ans:
    print(ans)
else:
    print('PREDAJA')