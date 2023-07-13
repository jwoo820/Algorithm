def solution(num_list, n):
    pre = num_list[:n]
    next = num_list[n:]
    
    return next+pre