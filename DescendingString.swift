//
//  main.swift
//  DescendingString
//  프로그래머스
//  문자열 내림차순으로 배치하기
//  Created by Park Jungwoo on 2022/09/27.
//

import Foundation

func solution(_ s:String) -> String {
    return String(Array(s).sorted(by: >))
}

print(solution("Zbcdefg"))
