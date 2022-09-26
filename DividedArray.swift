//
//  main.swift
//  DividedArray
//  프로그래머스
//  나누어 떨어지는 숫자 배열
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = arr.filter{ $0 % divisor == 0 }.sorted(by: <)
    return result.isEmpty ? [-1] : result
}

print(solution([5, 9, 7, 10], 5))
