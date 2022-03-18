//
//  main.swift
//  RemoveByPair
//  프로그래머스
//  짝지어 제거하기
//  Created by Park Jungwoo on 2022/03/18.
//

import Foundation

func solution(_ s:String) -> Int{

    
    //stack 으로 풀어야함
    var stack = [String.Element]()
    
    for i in s {
        stack.append(i)
        if stack.count > 1 {
            if stack.last! == stack[stack.count-2] {
                stack.removeLast()
                stack.removeLast()
            }
        }
    }

    return stack.count > 0 ? 0 : 1
}

//print(solution("baabaa"))

print(solution("bcbc"))
