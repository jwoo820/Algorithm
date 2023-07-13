def solution(n, k):
    return [i*k for i in range(1, n+1) if i*k <= n]