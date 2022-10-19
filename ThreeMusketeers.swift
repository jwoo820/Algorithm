//
//  main.swift
//  ThreeMusketeers
//  프로그래머스
//  삼총사
//  Created by Park Jungwoo on 2022/10/19.
//

import Foundation

func solution(_ number:[Int]) -> Int {
    // 완전탐색
    var result = 0
    for i in 0..<number.count {
        for j in i+1..<number.count {
            for k in j+1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }
    
    return result
}

print(solution([-2, 3, 0, 2, -5]))
