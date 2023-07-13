def solution(myString, pat):
    return int(pat in ''.join(['A' if i=='B' else 'B' for i in myString]))