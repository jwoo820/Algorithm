def solution(arr, idx):
    answer = arr[idx:]
    
    print(answer)
    return len(arr[:idx])+arr[idx:].index(1) if 1 in answer else -1