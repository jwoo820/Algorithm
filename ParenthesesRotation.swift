//
//  main.swift
//  ParenthesesRotation
//  프로그래머스
//  괄호 회전하기
//  Created by Park Jungwoo on 2022/12/21.
//

import Foundation

func solution(_ s:String) -> Int {
    var str = s
    let brackets: [String:String] = ["{":"}", "[":"]", "(":")"]
    var count = s.count
    for _ in 0..<s.count {
        let first = str.removeFirst()
        str += String(first)
        
        
        var stack: [String] = []
      
        for i in str {
            // 열린 괄호 일 경우 더해줌
            if brackets.keys.contains(String(i)) {
                stack.append(String(i))
            } else {
                if !stack.isEmpty {
                    // 닫힌 괄호 직전 괄호의 짝이 맞지 않을 경우
                    if brackets[stack.last!] != String(i) {
                        count -= 1
                        break
                    } else {
                    // 올바른 짝일 경우 이전 원소 삭제
                        stack.removeLast()
                    }
                } else {
                    // 첫번째로 들어온 원소가 닫히 괄호 일 경우 무조건 실패
                    count -= 1
                    break
                }
            }
            
        }
    }
    // 입력받은 문자열이 홀수이면 무조건 실패함
    return s.count%2==0 ? count : 0
}

print(solution("[](){}"))
