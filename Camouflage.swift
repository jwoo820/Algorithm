//
//  main.swift
//  Camouflage
//  프로그래머스
//  위장
//  Created by Park Jungwoo on 2022/02/12.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic : [String : [String]] = [:]
    
    for i in clothes {
        if dic[i[1]] != nil {
            dic[i[1]]!.append(i[0])
        }
        else {
            dic[i[1]] = [i[0]]
        }
    }
    
    var count = 1
    
    for i in dic.values {
        count *= (i.count + 1)
    }
    return count - 1
}

print(solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]])
)
