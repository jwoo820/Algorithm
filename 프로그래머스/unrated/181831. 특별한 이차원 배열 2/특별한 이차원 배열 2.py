def solution(arr):
    answer = 1
    
    for i in range(len(arr[0])):
        for j in range(len(arr[0])):
            if arr[i][j] != arr[j][i]:
                answer = 0
                break
    
    return answer