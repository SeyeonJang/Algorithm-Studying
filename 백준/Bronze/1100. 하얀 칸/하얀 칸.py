list = []
sum = 0

for i in range(8):
    list.append(input())

for i in range(8):
    for j in range(8):
        if i%2==0 and j%2==0 and list[i][j]=='F':
            sum += 1
        elif i%2==1 and j%2==1 and list[i][j]=='F':
            sum += 1
print(sum)