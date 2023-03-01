//
//  main.swift
//  NearestLetter
//  프로그래머스
//  가장 가까운 같은 글자
//  Created by Park Jungwoo on 2023/02/26.
//

import Foundation

func solution(_ s:String) -> [Int] {
    
    let arr = s.map{$0}
    
    var result: [Int] = []
    for i in 0..<arr.count {
        let temp = arr[i]
        var answer = -1
        for j in 0..<i {
            let c = arr[j]
            if c == temp {
                answer = i - j
            }
        }
        result.append(answer)
    }
    
    return result
}

print(solution("banana"))
