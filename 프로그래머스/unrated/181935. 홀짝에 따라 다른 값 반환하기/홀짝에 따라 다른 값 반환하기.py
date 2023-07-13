def solution(n):
    answer = 0
    if n%2 == 1:
        answer = sum(i for i in range(n+1) if i%2==1)
    else:
        answer = sum(i**2 for i in range(n+1) if i%2==0)
    return answer