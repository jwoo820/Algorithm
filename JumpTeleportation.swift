//
//  main.swift
//  JumpTeleportation
//  프로그래머스
//  점프와 순간 이동
//  Created by Park Jungwoo on 2022/11/22.
//

import Foundation

// 점프 - K칸 점프, K칸 만큼 에너지 소비

// 텔포 - 현재까지 온 거리 x2, 에너지 소비 X
func solution(_ n:Int) -> Int {
    var ans:Int = 0
    // 홀수일때 빼주고
    // 짝수일 때 그냥 나눔
    
    var n = n
    while n != 0 {
        if n%2 == 0 {
            n /= 2
        } else {
            ans += 1
            n -= 1
        }
    }
    
    return ans
}

print(solution(6))
