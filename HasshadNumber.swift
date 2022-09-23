//
//  main.swift
//  HasshadNumber
//  프로그래머스
//  하샤드 수
//  Created by Park Jungwoo on 2022/09/24.
//

import Foundation

func solution(_ x:Int) -> Bool {
    return x%String(x).compactMap{$0.hexDigitValue}.reduce(0, +) == 0
}

print(solution(10))
