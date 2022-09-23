//
//  main.swift
//  DescendingNumber
//  프로그래머스
//  정수 내림차순으로 배치하기
//  Created by Park Jungwoo on 2022/09/24.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
//    var num = Int(String(n).compactMap{ $0.hexDigitValue }.sorted(by: >).reduce("") { $0+String($1) })!
//    print(num)
//    var num1 = Int64(String(String(n).sorted(by: >)))!
//    print(num1)

    return Int64(String(String(n).sorted(by: >)))!
}

print(solution(118372))
