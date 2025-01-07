n,m,k = map(int, input().split())

if n==m and m==k:
    ans = 10000+n*1000
elif n!=m and m!=k and n!=k:
    ans = max(n,m,k)*100
else:
    if m==k:
        ans = 1000+m*100
    else:
        ans = 1000+n*100
print(ans)