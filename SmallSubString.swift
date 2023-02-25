//
//  main.swift
//  SmallSubString
//  프로그래머스
//  크기가 작은 부분 문자열
//  Created by Park Jungwoo on 2023/02/25.
//

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var answer: [Int] = []

    let arr = Array(t)

    for i in 0...arr.count - p.count {
        let substring = String(arr[i...i+p.count - 1])
        answer.append(Int(substring)!)
    }
        
    return answer.filter { $0 <= Int(p)! }.count
}

print(solution("3141592", "271"))

//print(solution("500220839878", "7"))

//print(solution("10203", "15"))
