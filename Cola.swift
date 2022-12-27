//
//  main.swift
//  Cola
//  프로그래머스
//  콜라
//  Created by Park Jungwoo on 2022/12/27.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    // 짝수일 때 -> n /2
    
    // 홀수일 때 -> n-1 /2
    var coke = n
    var count = 0
    
    while coke >= a {
        count += coke / a*b
        coke = (coke/a*b)+(coke%a)
    }
    
    return count
}

print(solution(2, 1, 20))
