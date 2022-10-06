//
//  main.swift
//  CorrectParenthesis
//  프로그래머스
//  올바른 괄호
//  Created by Park Jungwoo on 2022/10/06.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var count = 0
    for c in s {
        if c == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return false
        }
    }
    return count == 0 ? true : false
}

print(solution("()()"))
