//
//  main.swift
//  FactorsCount
//  프로그래머스
//  약수의 개수와 덧셈
//  Created by Park Jungwoo on 2022/04/12.
//

import Foundation

func count(factor:Int) -> Bool {
    var count = 0
    for i in 1...factor{
        if factor%i == 0 {
            count += 1
        }
    }
    
    if count % 2 != 0 {
        return false
    } else {
        return true
    }
}

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for i in left...right {
        if count(factor: i) {
            answer += i
        } else {
            answer -= i
        }
    }
    return answer
}

print(solution(13, 17))

