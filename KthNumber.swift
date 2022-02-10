//
//  main.swift
//  KthNumber
//  프로그래머스
//  k번째수
//  Created by Park Jungwoo on 2022/02/10.
//

import Foundation

print("Hello, World!")

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result :[Int] = []
    
    for n in 0..<commands.count {
        
        let i = commands[n][0]
        let j = commands[n][1]
        let k = commands[n][2]-1
        
        let arr = array[(i-1)..<j]
        let sort = arr.sorted(by: <)
        result.append(sort[k])
        
    }
    
    return result
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
