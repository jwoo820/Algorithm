//
//  main.swift
//  MinSquare
//  프로그래머스
//  최소직사각형
//  Created by Park Jungwoo on 2022/10/16.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let sorted = sizes.map{$0.sorted(by: >)}
   
    let col = sorted.flatMap { $0[0] }.max()!
    let row = sorted.flatMap{ $0[1] }.max()!
    
    return col * row
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
