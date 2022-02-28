//
//  main.swift
//  NumberToWord
//  프로그래머스
//  숫자 문자열과 영단어
//  2021 카카오 인턴쉽
//  Created by Park Jungwoo on 2022/02/28.
//

import Foundation

func solution(_ s:String) -> Int {
    
    var str = s.replacingOccurrences(of: "one", with: "1")
        .replacingOccurrences(of: "two", with: "2")
        .replacingOccurrences(of: "three", with: "3")
        .replacingOccurrences(of: "four", with: "4")
        .replacingOccurrences(of: "five", with: "5")
        .replacingOccurrences(of: "six", with: "6")
        .replacingOccurrences(of: "seven", with: "7")
        .replacingOccurrences(of: "eight", with: "8")
        .replacingOccurrences(of: "nine", with: "9")
        .replacingOccurrences(of: "zero", with: "0")
 
    return Int(str)!
}

print(solution("one4seveneight"))
print(solution("1234"))
