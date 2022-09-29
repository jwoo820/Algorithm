//
//  main.swift
//  BinaryTransformation
//  프로그래머스
//  이진 변환 반복하기
//  Created by Park Jungwoo on 2022/09/29.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var count = 0, times = 0
    while s != "1" {
        let replaceCount = s.filter{$0 == "0"}.count
        count += replaceCount
        
        s = String(s.count - replaceCount, radix: 2)
        times += 1
    }
    
    return [times, count]
}

print(solution("110010101001"))
