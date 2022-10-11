//
//  main.swift
//  SecretMap
//  프로그래머스
//  [1차] 비밀지도
//  Created by Park Jungwoo on 2022/10/09.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<n {
        var bitwise = String(arr1[i] | arr2[i], radix: 2)
        bitwise = String(repeating: "0", count: n-bitwise.count) + bitwise
        answer += [bitwise.reduce("", {$0 + ($1 == "1" ? "#" : " ")})]
    }
    
//    print(String(1 | 4, radix: 2))
    
    return answer
}

print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
