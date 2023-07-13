def solution(arr, n):
    answer = []
    for i, val in enumerate(arr):
        if len(arr)%2 == 0:
            answer.append(val+n if i%2==1 else val)
        else:
            answer.append(val+n if i%2==0 else val)
    return answer