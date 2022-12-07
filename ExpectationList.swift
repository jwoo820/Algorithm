//
//  main.swift
//  ExpectationList
//  프로그래머스
//  예상 대진표
//  Created by Park Jungwoo on 2022/12/07.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var a = a
    var b = b
    while a != b {
        if a%2 == 0 {
            a/=2
        } else {
            a = (a+1)/2
        }
        
        if b%2 == 0 {
            b/=2
        } else {
            b = (b+1)/2
        }
        answer += 1
    }
    return answer
}

print(solution(8, 4, 7))
