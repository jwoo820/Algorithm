//
//  main.swift
//  CropN^2Array
//  프로그래머스
//  n^2 배열 자르기
//  Created by Park Jungwoo on 2022/12/14.
//

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var arr: [Int] = Array(Int(left)...Int(right))
    
    var result = arr.map {
        //  i , j 의 최대값
        max($0/n + 1, $0%n + 1)
    }

    return result
}

print(solution(3, 2, 5))

// i j 최대값 + 1

// 123
// 456
// 789


// 123
// 223
// 333
// 123 223 333
// 2, 5 -> 3223
// 1234 2234 3334 4444
// 7, 14 -> 43334444
