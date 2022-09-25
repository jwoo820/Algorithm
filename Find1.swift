//
//  main.swift
//  Find1
//  프로그래머스
//  나머지가 1이 되는 수 찾기
//  Created by Park Jungwoo on 2022/09/25.
//

import Foundation

func solution(_ n:Int) -> Int {
    for i in 2...n {
        if n%i == 1 {
            return i
        }
    }
    return 0
}

print(solution(10))
