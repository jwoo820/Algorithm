//
//  main.swift
//  MultiplyMatrix
//  프로그래머스
//  행렬의 곱셈
//  Created by Park Jungwoo on 2022/10/25.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count {
            for k in 0..<arr1[i].count {
                answer[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    
    return answer
}

print(solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]))
