//
//  main.swift
//  GymSuit
//  프로그래머스
//  체육복
//  Created by Park Jungwoo on 2022/03/08.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var suit :[Int] = Array(repeating: 1, count: n)
    for i in lost {
        suit[i-1] = 0
    }
    for i in reserve {
        suit[i-1] += 1
    }
    // 앞에 먼저 찾고, 뒤에 찾기
    for i in 0..<n {
        if suit[i] == 0 {
            // 앞번호
            if i > 0 && suit[i-1] > 1 {
                suit[i] = 1
                suit[i-1] -= 1
            }
            // 뒷번호
            else if i < n-1 && suit[i+1] > 1 {
                suit[i] = 1
                suit[i+1] -= 1
            }
        }
    }

    return suit.filter{$0 != 0 }.count
}

//print(solution(5, [2, 4], [1, 3, 5]))
//print(solution(5, [2, 4], [3]))

//print(solution(3, [3], [1]))

print(solution(6, [6,2,4], [1,5,3]))
