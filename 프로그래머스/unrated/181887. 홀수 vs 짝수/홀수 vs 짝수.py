def solution(num_list):
    even = 0
    odd = 0
    
    for num in range(len(num_list)):
        if num%2 == 0:
            odd += num_list[num]
        else:
            even += num_list[num]
    return max(even, odd)