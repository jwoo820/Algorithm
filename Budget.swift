//
//  main.swift
//  Budget
//  프로그래머스
//  예산
//  Created by Park Jungwoo on 2022/05/18.
//

import Foundation


func solution(_ d:[Int], _ budget:Int) -> Int {
    
    var budget = budget
    
    return d.sorted().filter{
        budget = budget - $0
        return budget >= 0
    }.count
}

print(solution([1,3,2,5,4], 9))
print(solution([2,2,3,3], 10))
