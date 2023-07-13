def solution(str_list, ex):
    return ''.join(i if ex not in i else '' for i in str_list)