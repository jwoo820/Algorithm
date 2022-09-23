//
//  main.swift
//  CheckSquareRootInteger
//  프로그래머스
//  정수 제곱근 판별
//  Created by Park Jungwoo on 2022/09/23.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n)))
    return t*t == n ? (t+1)*(t+1) : -1
}

print(solution(121))
