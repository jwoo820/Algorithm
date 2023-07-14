def solution(myString):
    split = myString.split('x')

    return [len(i) for i in split]