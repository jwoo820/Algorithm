//
//  main.swift
//  AddDigits
//  프로그래머스
//  자릿수 더하기
//  Created by Park Jungwoo on 2022/09/23.
//

import Foundation

func solution(_ n:Int) -> Int
{
    return String(n).map{ Int(String($0))! }.reduce(0, +)
}

print(solution(123))
