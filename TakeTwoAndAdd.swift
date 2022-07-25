//
//  main.swift
//  TakeTwoAndAdd
//  프로그래머스
//  두 개 뽑아서 더하기
//  Created by Park Jungwoo on 2022/07/25.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var sum: [Int] = []
    
    for i in 0..<numbers.count {
        for j in i..<numbers.count - 1 {
            sum.append(numbers[i]+numbers[j+1])
        }
    }
    
    let removeDuplicate: Set = Set(sum)
    
    return Array(removeDuplicate).sorted(by: <)
}

print(solution([2,1,3,4,1]))
