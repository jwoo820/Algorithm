//
//  main.swift
//  FindKim
//  프로그래머스
//  서울에서 김서방 찾기
//  Created by Park Jungwoo on 2022/09/26.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    for i in seoul.enumerated() {
        if i.element == "Kim" {
            return "김서방은 \(i.offset)에 있다"
        }
    }
    return ""
//    return "김서방은\(seoul.index(of: "Kim")!)에 있다"
}

print(solution(["Jane", "Kim"]))

