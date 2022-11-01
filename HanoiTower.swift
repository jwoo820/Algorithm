//
//  main.swift
//  HanoiTower
//  프로그래머스
//  하노이 탑
//  Created by Park Jungwoo on 2022/10/31.
//



import Foundation

var answer: [[Int]] = []

func solution(_ n:Int) -> [[Int]] {
    hanoi(n: n, from: 1, to: 3, mid: 2)
    
    return answer
}

func hanoi(n: Int, from: Int, to: Int, mid: Int) {
    // 1개일 경우 그냥 옮기면 됨
    if n == 1 {
        answer.append([from, to])
    //
    } else {
        // 중간으로 한번 옮김
        hanoi(n: n-1, from: from, to: mid, mid: to)
        // 과정 추가
        answer.append([from, to])
        // 다시 다시 옮김
        hanoi(n: n-1, from: mid, to: to, mid: from)
    }
}

print(solution(3))
