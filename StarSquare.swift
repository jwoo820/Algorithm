//
//  main.swift
//  StarSquare
//  프로그래머스
//  직사각형 별찍기
//  Created by Park Jungwoo on 2022/09/29.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for i in 1...b {
    print(String(repeating: "*", count: a))

}
