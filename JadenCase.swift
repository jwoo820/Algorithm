//
//  main.swift
//  JadenCase
//  프로그래머스
//  JadenCase 문자열 만들기
//  Created by Park Jungwoo on 2022/09/27.
//

import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map {
        $0.enumerated().map { (index, char) in
            if index == 0 {
                return char.uppercased()
            } else {
                return char.lowercased()
            }
        }.joined()
    }.joined(separator: " ")
}

print(solution("3people unFollowed me"))
