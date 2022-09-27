//
//  main.swift
//  StringBasic
//  프로그래머스
//  문자열 다루기 기본
//  Created by Park Jungwoo on 2022/09/27.
//

import Foundation

func solution(_ s:String) -> Bool {
    return Int(s) != nil && (s.count == 4 || s.count == 6) ? true : false
}

print(solution("a234"))


