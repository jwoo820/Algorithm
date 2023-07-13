def solution(my_strings, parts):
    answer = ''
    for i, val in enumerate(my_strings):
        first = parts[i][0]
        last = parts[i][-1]
        answer += val[first:last+1]
    
    return answer