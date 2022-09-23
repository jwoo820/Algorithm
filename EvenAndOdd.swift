//
//  main.swift
//  EvenAndOdd
//  프로그래머스
//  짝수와 홀수
//  Created by Park Jungwoo on 2022/09/23.
//

import Foundation

func solution(_ num:Int) -> String {
    return num%2==0 ? "Even":"Odd"
}

print(solution(0))
