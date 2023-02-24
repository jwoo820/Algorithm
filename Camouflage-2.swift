//
//  main.swift
//  Camouflage-2
//
//  Created by Park Jungwoo on 2023/02/24.
//  프로그래머스
//  위장
//  해시

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic: [String: [String]] = [:]
    
    for i in clothes {
        if dic[i[1]] != nil {
            dic[i[1]]!.append(i[0])
        } else {
            dic[i[1]] = [i[0]]
        }
    }
    // 하나라도 선택해야함 -> (n+1)(m+1) - 1
//    print(dic)
    var answer = 1
    for i in dic.values {
        answer *= (i.count + 1)
    }
    
    return answer - 1
}

print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))
