//
//  main.swift
//  HideCellPhoneNumber
//  프로그래머스 핸드폰 번호 가리기
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ phone_number:String) -> String {
    return String(Array(repeating: "*", count: phone_number.count-4))+phone_number.suffix(4)
}

print(solution("01033334444"))
//print(solution("4444"))


