//
//  main.swift
//  FunctionDevelopment-2
//  프로그래머스
//  기능개발
//  스택/큐
//  Created by Park Jungwoo on 2023/02/27.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var taskDay: [Int] = []
    var answer: [Int] = []
    var temp = progresses
    
    
    for i in 0..<progresses.count {
        var count = 0
        while temp[i] < 100 {
            temp[i] += speeds[i]
            count += 1
        }
        
        taskDay.append(count)
    }
//    print(taskDay)
    // 7 3 9
    while !taskDay.isEmpty {
        var now = taskDay.first!
        var count = 0
        while !taskDay.isEmpty && taskDay.first! <= now {
            count += 1
            taskDay.removeFirst()
        }
        answer.append(count)
    }
    
    return answer
}

print(solution([93, 30, 55], [1, 30, 5]))
