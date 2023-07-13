def solution(num_list, n):
    answer = []
    for i, num in enumerate(num_list):
        if i == 0:
            answer.append(num)
        elif i % n == 0:
            answer.append(num)
    return answer