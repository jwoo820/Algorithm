//
//  main.swift
//  MaxMin
//  프로그래머스
//  최대값과 최솟값
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")

    let max = arr.map{ Int($0)! }.max()
    let min = arr.map{ Int($0)! }.min()
    
    return "\(min!) \(max!)"
}

print(solution("1 2 3 4"))
