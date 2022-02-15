//
//  main.swift
//  H-Index
//  프로그래머스
//  h-index
//  정렬
//  Created by Park Jungwoo on 2022/02/15.

import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var sort = citations.sorted(by: >)
//    print(sort)
    for i in 0..<sort.count {
//        print("\(i) \(sort[i])")
        if i >= sort[i] {
            return i
        }
    }
    return sort.count
}

print(solution([3, 0, 6, 1, 5]))

