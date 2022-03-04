//
//  main.swift
//  StringCompression
//  프로그래머스
//  문자열 압축
//  Created by Park Jungwoo on 2022/03/04.
//

import Foundation

func solution(_ s:String) -> Int {
    
    var resultString = s
    
    if s.count == 1{
        return 1
    }
    
    for i in 1...s.count/2 {
        var s = s
        var split:[String] = []
        
        while !s.isEmpty {
            let a = String(s.prefix(i)) // 문자열 자르기
            split.append(a)
            
            if s.count < i {
                s.removeAll()
            }else{
                s.removeFirst(i)
            }
        }
        // 문자열 압축
        var prev = ""
        var word = ""
        var count = 1
        for z in 0..<split.count{
            if prev == split[z]{
                count += 1
            }else {
                if count == 1{
                    word.append("\(prev)")
                }else {
                    word.append("\(count)\(prev)")
                }
                prev = split[z]
                count = 1
            }
        }
        
        if count == 1{
            word.append("\(prev)")
        }else{
            word.append("\(count)\(prev)")
        }
        
        if word.count < resultString.count {
            resultString = word
        }
    }
    return resultString.count
}

print(solution("abcabcabcabcdededededede"))
