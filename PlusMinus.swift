//
//  main.swift
//  PlusMinus
//  프로그래머스
//  음양 더하기
//  Created by Park Jungwoo on 2022/03/15.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var convert :[Int] = []
    var result = 0
    for i in 0..<absolutes.count {
        if signs[i] {
            convert.append(absolutes[i])
        }else {
            convert.append(-absolutes[i])
        }
        result += convert[i]
    }

    return result
}


print(solution([4,7,12], [true,false,true]))
