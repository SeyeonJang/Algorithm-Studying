def solution(n):
    if n < 2:
        return n
    
    nlist = [0] * (n+1)
    nlist[1] = 1
    for i in range(2,n+1):
        nlist[i] = nlist[i-2] + nlist[i-1]
        
    return nlist[n] % 1234567