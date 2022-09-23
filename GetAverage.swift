//
//  main.swift
//  GetAverage
//  프로그래머스
//  평균 구하기
//  Created by Park Jungwoo on 2022/09/23.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}

print(solution([1,2,3,4]))
