def solution(s):
    
    # for i in range(len(s)):
    #     if i==0 and int(s[i])<97: #0번째꺼 대문자 만들기
    #         s[i] += 32
    #     else:
    #         if s[i-1] == " ": #이전 공백이라면
    #             if int(s[i])<97: # 대문자 만들기
    #                 s[i] += 32
    #             elif s[i] == " ": #이번꺼도 공백이라면 continue
    #                 continue
    #         elif int(s[i])>=97 and int(s[i])<=112:
    #             s[i] -= 32
    
    return " ".join([word.capitalize() for word in s.split(" ")])
