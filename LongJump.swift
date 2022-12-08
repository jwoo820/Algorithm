//
//  main.swift
//  LongJump
//  프로그래머스
//  멀리 뛰기
//  Created by Park Jungwoo on 2022/12/08.
//

import Foundation

func solution(_ n:Int) -> Int {
    var dp = [0,1,2]
    if n < 3 {
        return dp[n]
    }
    
    for _ in 3...n {
        dp.append(0)
        dp[dp.count-1] = (dp[dp.count - 2] + dp[dp.count - 3]) % 1234567
    }
    return dp.last!
}

print(solution(5))

// dp에 담기 전에 나머지값을 미리 담아야함 -> 안하면 오버플로우남
// 재귀로 풀 경우 시간 초과 -> DP
// 피보나치
// 1 -> 1
// 2 -> 2   1 1 , 2
// 3 -> 3   1 1 1, 2 1 , 1 2
// 4 -> 5   1 1 1 1, 2 1 1, 1 2 1, 1 1 2, 2 2
// 5 -> 8   1 1 1 1 1, 2 1 1 1, 1 2 1 1, 1 1 2 1, 1 1 1 2, 2 2 1, 2 1 2, 1 2 2 -> 8
// 6 -> 13  1 1 1 1 1 1,  2 1 1 1 1 x 5, 2 2 1 1 1 x 7, 2 2 2
