//
//  main.swift
//  Watermelon
//  프로그래머스
//  수박수박수박
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ n:Int) -> String {
    return (0..<n).map{$0%2 == 0 ? "수":"박"}.reduce("", +)
}

print(solution(3))

