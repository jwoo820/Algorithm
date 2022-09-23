//
//  main.swift
//  CountPY
//  프로그래머스
//  문자열 내 p와 y의 개수
//  Created by Park Jungwoo on 2022/09/23.
//

import Foundation

func solution(_ s:String) -> Bool
{
    return s.lowercased().filter{$0 == "y"}.count == s.lowercased().filter{$0 == "p"}.count
}

print(solution("pPoooyY"))
