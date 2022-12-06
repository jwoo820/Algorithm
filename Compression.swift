//
//  main.swift
//  Compression
//  프로그래머스
//  [3차] 압축
//  Created by Park Jungwoo on 2022/11/23.
//

import Foundation

func solution(_ msg:String) -> [Int] {
    var dic = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map{ String($0) }
    var message = msg.map{ String($0) }
    var answer: [Int] = []
    var input = ""
    
    while !message.isEmpty {
        // 확인할 문자
        input += message.removeFirst()
        
        guard let next = message.first else {
            // 마지막 원소가 없을 경우
            answer.append(dic.firstIndex(of: input)! + 1)
            break
        }
        
        // dic에 원소가 없으면 해당 Index 저장 + dic 추가
        if let index = dic.firstIndex(of: input), !dic.contains(input + next) {
            answer.append(index + 1)
            dic.append(input + next)
            input = ""
        }
    }
    return answer
}

print(solution("KAKAO"))
