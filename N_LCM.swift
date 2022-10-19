//
//  main.swift
//  N_LCM
//  프로그래머스
//  n개의 최소공배수
//  Created by Park Jungwoo on 2022/10/19.
//

import Foundation

// gcd 함수
func gcd(a: Int, b: Int) -> Int {
    return b==0 ? a : gcd(a: b, b: a%b)
}
// lcm 함수
func lcm(a: Int, b: Int, gcd: Int) -> Int {
    return a*b/gcd
}

func solution(_ arr:[Int]) -> Int {
    
    //GCD
    //
    var db: [Int] = []
    // 최소 공배수 공식(LCM)
    // a x b / GCD
    var result = 0
    db.append(arr[0])
    for i in 1..<arr.count {
        result = lcm(a: db.last!, b: arr[i], gcd: gcd(a: db.last!, b: arr[i]))
        db.append(result)
    }
    
    return result
}

print(solution([2,6,8,14]))
