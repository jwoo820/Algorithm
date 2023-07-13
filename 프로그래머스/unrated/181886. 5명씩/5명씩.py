def solution(names):
    answer = [names[i:i+5][0] for i in range(0, len(names), 5)]
    
    return answer