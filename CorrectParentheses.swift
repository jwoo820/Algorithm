//
//  main.swift
//  CorrectParentheses
//  프로그래머스
//  올바른 괄호
//  스택/큐
//  Created by Park Jungwoo on 2023/02/27.
//

import Foundation

func solution(_ s:String) -> Bool {
    // 1. 첫번째 문자열이 ) 일 때
    // 2. ( 와 ) 의 개수가 맞지 않을 때
    var count = 0
    for i in s {
        if i == "(" {
            count += 1
        } else {
            count -= 1
        }
        // 1번 조건
        if count < 0 {
            return false
        }
    }
    // 2번 조건
    return count == 0 ? true : false
}

print(solution("()()"))
