//
//  main.swift
//  NextBigNumber
//  프로그래머스
//  다음 큰 숫자
//  Created by Park Jungwoo on 2022/10/07.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var count = n+1
    let radix = String(n, radix: 2).filter{$0 == "1"}.count
    
    while true {
        // nonzeroBitCount -> 알아서 2진수 반환하고 1의 갯수만 나옴, 대박!
        let compare = String(count, radix: 2).filter{$0 == "1"}.count
        if compare == radix {
            break
        } else {
            count += 1
        }
    }

    return count
}

print(solution(78))
