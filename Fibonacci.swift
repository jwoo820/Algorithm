//
//  main.swift
//  Fibonacci
//  프로그래머스
//  피보나치 수
//  Created by Park Jungwoo on 2022/10/07.
//

import Foundation

func solution(_ n:Int) -> Int {
    var fibo = [0,1]
    for i in 2...n {
        fibo.append((fibo[i-2]+fibo[i-1])%1234567)
    }
    
    return fibo[n]
}

print(solution(3))
