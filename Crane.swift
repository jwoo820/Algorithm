//
//  main.swift
//  Crane
//  프로그래머스
//  크레인 인형뽑기 게임
//  Created by Park Jungwoo on 2022/03/14.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {

    var newBoard = board
    var bucket : [Int] = []
    var orignal : [Int] = []
    for move in moves {
        for i in 0..<newBoard.count {
            if !(newBoard[i][move-1] == 0) {    // stack
                orignal.append(newBoard[i][move-1])
                if bucket.last == newBoard[i][move-1] {
                    bucket.removeLast()
                }else {
                    bucket.append(newBoard[i][move-1])
                }
                newBoard[i][move-1] = 0
                break
            }
        }
    }
    
    return orignal.count - bucket.count
}

print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))

//[0,0,0,0,0]
//[0,0,0,0,0],
//[0,0,5,0,0],
//[0,2,4,0,2],
//[0,5,1,3,1]

// bucket [4, 3,1,1,3, 2,4] -> return 4
