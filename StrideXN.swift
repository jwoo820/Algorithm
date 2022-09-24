//
//  main.swift
//  StrideXN
//  프로그래머스
//  x만큼 간격이 있는 n개의 숫자
//  Created by Park Jungwoo on 2022/09/24.
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map{ Int64($0*x) }
}

print(solution(2, 5))
