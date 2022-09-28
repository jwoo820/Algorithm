//
//  main.swift
//  ChagesCalculate
//  프로그래머스
//  부족한 금액 계산하기
//  Created by Park Jungwoo on 2022/09/28.
//

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result = 0
    for i in 1...count{
        result += i*price
    }
    return result-money > 0 ? Int64(result-money) : 0
}

print(solution(3, 20, 4))
