//
//  main.swift
//  GCD&LCM
//  프로그래머스
//  최대공약수와 최소공배수
//  Created by Park Jungwoo on 2022/09/29.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    print("a: \(a), b: \(b)")
    if b == 0 { return a }
    return gcd(b, a%b)
}

func lcm(_ a: Int,_ b: Int) -> Int {
    return a*b/gcd(a, b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {

    return [gcd(n, m), lcm(n, m)]
}

print(solution(12, 3))
