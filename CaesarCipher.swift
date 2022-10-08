//
//  main.swift
//  CaesarCipher
//  프로그래머스
//  시저 암호
//  Created by Park Jungwoo on 2022/10/08.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let alpabet = "abcdefghijklmnopqrstuvwxyz".map{$0}
    var result = s.map {
        guard let index = alpabet.firstIndex(of: Character($0.lowercased())) else { return $0 }
        let letter = alpabet[(index + n) % alpabet.count]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    }
    return String(result)
}

print(solution("e B z", 4))
