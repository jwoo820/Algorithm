//
//  main.swift
//  FlipNaturalNumbers
//  프로그래머스
//  자연수 뒤집어 배열로 만들기
//  Created by Park Jungwoo on 2022/09/23.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
//    return "\(n)".compactMap{ $0.hexDigitValue }.reversed() // 이거 머박
    return String(n).map{ Int(String($0))! }.reversed()
}

print(solution(12345))
