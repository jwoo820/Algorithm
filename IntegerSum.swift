//
//  main.swift
//  IntegerSum
//  프로그래머스
//  두 정수 사이의 합
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64( b > a ? (a...b).reduce(0, +) : (b...a).reduce(0, +))
}

print(solution(3, 5))

