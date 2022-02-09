//
//  main.swift
//  PrimeNumber
//  프로그래머스
//  소수찾기
//  Created by Park Jungwoo on 2022/02/09.
//


import Foundation

func solution(_ n:Int) -> Int {

    var result = 0
    var arr = Array.init(repeating: false, count: n+1)

    for i in 2...n{
        // 2부터 count
        if(!arr[i]){
            result+=1
        }
        // i의 배수는 모두 합성수임
        for j in stride(from: i, through: n, by: i){
            arr[j] = true
        }
    }
    return result
}
print(solution(10))

