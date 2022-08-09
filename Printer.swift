//
//  main.swift
//  Printer
//
//  Created by Park Jungwoo on 2022/08/09.
//  프로그래머스
//  프린터

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    let target = priorities[location]
    var check = Array(repeating: false, count: priorities.count)
    check[location] = true
    var queue = zip(priorities, check).filter{ $0.0 >= target}  // 필요없는 연산 날림

    var count = 0
    
    while true {
        let first = queue.first!
        
        var firstIsBiggest = true
        for item in queue {
            if item.0 > first.0 {
                firstIsBiggest = false
                break
            }
        }
        
        if firstIsBiggest {
            count += 1
            if first.1 { break }
            queue.removeFirst()
        } else {
            queue.removeFirst()
            queue.append(first)
        }
    }
    
    
    return count
}

print(solution([2, 1, 3, 2], 2))

print(solution([1, 1, 9, 1, 1, 1], 5))
