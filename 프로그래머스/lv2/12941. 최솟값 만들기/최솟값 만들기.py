def solution(A,B):
    sum = 0
    n = len(A)
    m = len(B)
    
    A.sort()
    B.sort(reverse=True)

    for i in range(n):
        sum += A[i] * B[i]

    return sum