//
//  main.swift
//  FoodFight
//  프로그래머스
//  푸드파이트
//  Created by Park Jungwoo on 2022/12/27.
//

import Foundation

func solution(_ food:[Int]) -> String {

    var str = ""
    
    for i in 1..<food.count {
        str += String(repeating: "\(i)", count: food[i] / 2 )
    }
    return str + "0" + String(str.reversed())
}

print(solution([1, 3, 4, 6]))
