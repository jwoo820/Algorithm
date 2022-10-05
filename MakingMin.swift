//
//  main.swift
//  MakingMin
//  프로그래머스
//  최솟값 만들기
//  Created by Park Jungwoo on 2022/10/05.
//

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let sortedA = A.sorted()
    let sortedB = B.sorted(by: >)
    
    var result = 0
    
    for i in sortedA.enumerated() {
        result += sortedA[i.offset] * sortedB[i.offset]
    }
    return result
}

print(solution([1, 4, 2], [5, 4, 4]))

print(solution([1,2],     [3,4]))
