//
//  main.swift
//  SumOfFactors
//  프로그래머스
//  약수의 합
//  Created by Park Jungwoo on 2022/09/23.
//

import Foundation

func solution(_ n:Int) -> Int {
    return n != 0 ? Array(1...n).filter{ n % $0 == 0 }.reduce(0, +) : 0
}

print(solution(12))


