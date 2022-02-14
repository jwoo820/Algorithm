//
//  main.swift
//  BiggestNumber
//  프로그래머스
//  가장 큰수
//  정렬
//  Created by Park Jungwoo on 2022/02/14.
//

import Foundation

print("Hello, World!")

func solution(_ numbers:[Int]) -> String {
    
    let sort : [Int] = numbers.sorted{
        Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }

    print(sort)
    if sort[0] == 0 { return "0"}
    
    return sort.reduce(""){
        $0 + "\($1)"
    }
}

print(solution([3, 30, 34, 5, 9]))

