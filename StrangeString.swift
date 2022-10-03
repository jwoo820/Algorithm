//
//  main.swift
//  StrangeString
//  프로그래머스
//  이상한 문자 만들기
//  Created by Park Jungwoo on 2022/09/30.
//

import Foundation

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ")
    return arr.map{
        $0.enumerated().map{
            return $0.offset%2==0 ? $0.element.uppercased() : $0.element.lowercased()
        }.joined()
    }.joined(separator: " ")
}

print(solution("try hello world"))
