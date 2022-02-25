//
//  main.swift
//  Lotto
//  프로그래머스
//  로또의 최고 순위와 최저 순위
//  Created by Park Jungwoo on 2022/02/24.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    let minCorrect = win_nums.filter{lottos.contains($0)}.count    // 맞춘 갯수
    var count = 0   // 0 개수
    for i in lottos {
        if i == 0 {
            count += 1
        }
    }
    var minScore = 0
    var maxScore = 0
    if count >= 5 {
        minScore = 6
        maxScore = 7-(minCorrect+count)
    }
    else if count == 0 && minCorrect == 0{
        minScore = 6
        maxScore = 6
    }
    else {
        minScore = 7-minCorrect
        maxScore = 7-(minCorrect+count)
    }
    
    return [maxScore, minScore]
}

print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
//print(solution([0,0,0,0,0,0], [31, 10, 45, 1, 6, 19]))
//print(solution([0,0,0,0,0,1], [31, 10, 45, 1, 6, 19]))
//print(solution([31, 10, 45, 1, 6, 19], [31, 10, 45, 1, 6, 19]))
//print(solution([31, 0, 0, 0, 6, 19], [31, 10, 45, 1, 6, 19]))
//print(solution([0, 0, 0, 0, 0, 20], [31, 10, 45, 1, 6, 19]))
print(solution([2, 2, 2, 2, 2, 2], [31, 10, 45, 1, 6, 19]))
