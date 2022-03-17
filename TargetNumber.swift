//
//  main.swift
//  TargetNumber
//  프로그래머스
//  타켓넘버
//  DFS/BFS
//  Created by Park Jungwoo on 2022/02/15.
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
        
        func DFS(index: Int, sum : Int) {
            // 끝까지 다 돌았을 때 target 이면 count
            if (index == numbers.count - 1) && sum == target {
                count += 1
                return
            }
        
        
        guard index + 1 < numbers.count else { return } // index 넘어가면 탈출
        
        DFS(index: index + 1, sum: sum + numbers[index + 1])    // +1
        DFS(index: index + 1, sum: sum - numbers[index + 1])    // -1
        }
        DFS(index: -1, sum: 0)
        return count
}

print(solution([1,1,1,1,1], 3))
