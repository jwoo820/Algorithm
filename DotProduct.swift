//
//  main.swift
//  DotProduct
//  프로그래머스 내적
//  Created by Park Jungwoo on 2022/02/08.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
    var result = 0
    for i in 0..<a.count {
        result += a[i] * b[i]
    }
    return result
}

//var result = solution([1,2,3,4], [-3,-1,0,2])
//print(result)
