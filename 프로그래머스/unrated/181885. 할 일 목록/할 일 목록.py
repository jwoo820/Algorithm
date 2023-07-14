def solution(todo_list, finished):
    answer = []
    
    for i, val in enumerate(finished):
        if not val:
            answer.append(todo_list[i])
    return answer