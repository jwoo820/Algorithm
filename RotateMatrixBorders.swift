//
//  main.swift
//  RotateMatrixBorders
//  프로그래머스
//  행렬 테두리 회전하기
//  Created by Park Jungwoo on 2022/03/22.
//  다시 풀기!!

import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    
    var answer = [Int]()
    var arr :[[Int]] = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    var count = 1
    
    for i in 0..<rows {
        for j in 0..<columns {
            arr[i][j] = count
            count += 1
        }
    }
    
    func rotate(_ p1:(Int, Int),_ p2:(Int, Int)) -> Int {
        var minValue = Int.max
        
        let dx = [1,0,-1,0]
        let dy = [0,1,0,-1]
        
        var pos = p1    // 현재 위치
        var before = arr[pos.0][pos.1]  // 이전 위치
        
        var phase = 0
        while phase < 4 {
            pos = (pos.0 + dy[phase], pos.1 + dx[phase])
            
            let temp = arr[pos.0][pos.1]
            arr[pos.0][pos.1] = before
            before = temp
            if arr[pos.0][pos.1] < minValue {
                minValue = arr[pos.0][pos.1]
            }
            
            let nextRow = pos.0 + dy[phase]
            let nextCol = pos.1 + dx[phase]

            if case (p1.0 ... p2.0) = nextRow, case (p1.1 ... p2.1) = nextCol {
                continue
            }else {
                phase += 1
            }
        }
        
        return minValue
    }
    
    for q in queries {
        answer.append(rotate((q[0] - 1,q[1] - 1), (q[2] - 1,q[3] - 1)))
    }
    
    return answer
}

print(solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]))
