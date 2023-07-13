def solution(strArr):
    answer = []
    for index, str in enumerate(strArr):
        if index%2 == 1:
            answer.append(str.upper())
        else:
            answer.append(str.lower())
    return answer
    # return [val.upper() for i, val in enumerate(strArr) if i%2==1 else val.lower() ]