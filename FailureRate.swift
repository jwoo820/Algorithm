//
//  main.swift
//  FailureRate
//  프로그래머스
//  실패율
//  Created by Park Jungwoo on 2022/03/23.


/// #Filter 쓰면 속도 엄청 느려짐


import Foundation

/// 실패율 계산
/// - Parameters:
///   - N: 전체 스테이지의 개수 (1~500)
///   - stages: 스테이지의 길이(1~200,000)
/// - Returns: 실패율이 높은 스테이지부터 내림차순으로 스테이지 번호 출력
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var failure:[Int:Float] = [:]   // key : stage, value : 실패율
    var player: Int = stages.count
    
    for i in 1...N {
        var n = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                n += 1
            }
        }
        failure[i] = Float(n)/Float(player)
        player -= n
    }
    
    return failure.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}
}

print(solution(5, [2,2,2,2,2,2]))
