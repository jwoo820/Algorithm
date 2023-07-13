def solution(a, b):
    answer = 0
    ab = int(''.join(map(str,[a, b])))
    ba = int(''.join(map(str,[b, a])))
    
    return ab if ab >= ba else ba