//
//  main.swift
//  FunctionDevelopment
//  프로그래머스
//  기능개발
//  스택/큐
//  Created by Park Jungwoo on 2022/02/22.
//

import Foundation

print("Hello, World!")

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var cpy = progresses
    var result:[Int] = []
    var answer:[Int] = []
    
    for i in 0..<progresses.count {
        var count = 0
        while cpy[i] < 100 {
            cpy[i] += speeds[i]
            count+=1
        }
        result.append(count)
    }
    while !result.isEmpty {
        let nowdelay = result.first!
        var taskCnt = 0
        while !result.isEmpty && result.first! <= nowdelay {
            taskCnt += 1
            result.removeFirst()
        }
        answer.append(taskCnt)
    }
    
    return answer
}

print(solution([93, 30, 55], [1, 30, 5]))

print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]))
