//
//  main.swift
//  Carpet
//  프로그래머스
//  카펫
//  Created by Park Jungwoo on 2022/10/12.
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var width = 1
    let sum = brown + yellow
    var result = [Int]()
    for height in 1...sum {
        width = sum / height
        if(width-2)*(height-2) == yellow {
            result = [height, width]
        }
    }
    return result
}

print(solution(10, 2))
