//
//  main.swift
//  DeleteMin
//  프로그래머스
//  제일 작은 수 제거하기
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
//    var result = arr
//    result.remove(at: result.firstIndex(of: arr.min()!)!)
//    return result.isEmpty ? [-1] : result
    
    return arr.count == 1 ? [-1] : arr.compactMap{ $0 != arr.min() ? $0 : nil }
}

print(solution([4,3,2,1]))
