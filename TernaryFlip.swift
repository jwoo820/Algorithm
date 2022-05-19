//
//  main.swift
//  TernaryFlip
//  프로그래머스
//  3진법 뒤집기
//  진수 변환 문제
//  Created by Park Jungwoo on 2022/05/19.
//

import Foundation

func solution(_ n:Int) -> Int {
    
    let flip = String(n, radix: 3)
    let answer = Int(String(flip.reversed()),radix: 3)
    
    return answer!
}

print(solution(45))
print(solution(125))
