//
//  main.swift
//  ParenthesisConversion
//  프로그래머스
//  괄호 변환
//  Created by Park Jungwoo on 2022/05/03.
//  무조건 균형잡긴 괄호만 주어짐

import Foundation
// 올바른 괄호 문자열
func arePairsMatched(_ p : String) -> Bool {
    if p.isEmpty { return true }
    var p = p
    var stack: [String] = []
    while !p.isEmpty {
        let x = String(p.removeFirst())
        if stack.isEmpty { stack.append(x) }
        else if stack.last! == "(" && x == ")"
        { stack.removeLast() }
        else { stack.append(x) }
    }
    return stack.isEmpty
}

func solution(_ p : String) -> String {
    
    if p.isEmpty { return ""}   // 1번
    else if arePairsMatched(p) { return p }
    
    var v = p
    var u = String(v.removeFirst())
    
    while u.filter{$0 == "("}.count != u.filter{$0 == ")"}.count{ // 2번
        let x = v.removeFirst()
        u.append(x)
    }
    if arePairsMatched(u) { // 3번
        return u + solution(v)
    } else {   // 4번
        var tmp = "(" + solution(v) + ")"
        u.removeFirst()
        u.removeLast()
        
        u = u.map{
            if $0 == "(" { return ")" }
            else { return "(" }
        }.reduce(""){$0 + $1}
        return tmp + u
    }
}

print(solution("()))((()"))
