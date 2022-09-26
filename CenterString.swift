//
//  main.swift
//  CenterString
//  프로그래머스
//  가운데 글자 가져오기
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ s:String) -> String {
    return s.count%2 == 0 ? String(Array(s)[(s.count/2)-1...(s.count/2)]): String(Array(s)[(s.count/2)])
}

print(solution("a"))
