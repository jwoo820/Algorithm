//
//  main.swift
//  CollatzConjecture
//  프로그래머스
//  콜라츠 추측
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ num:Int) -> Int {
    var result = num
    var count = 0
    while result != 1 {
        if count > 500 {
            return -1
        }
        if result % 2 == 0 {
            result /= 2
        }else {
            result = result * 3 + 1
        }
        count += 1
    }
    return count
}

print(solution(6))

