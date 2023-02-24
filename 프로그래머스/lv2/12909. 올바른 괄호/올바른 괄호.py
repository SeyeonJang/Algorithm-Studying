def solution(s):
    if s[0] == ')':
        return False
    
    sum = 1
    for i in range(1, len(s)):
        if sum < 0:
            return False
            break
            
        if s[i] == "(":
            sum += 1
        elif s[i] == ")":
            sum -= 1

    if sum == 0:
        return True
    else:
        return False