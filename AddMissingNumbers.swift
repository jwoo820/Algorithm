//
//  main.swift
//  AddMissingNumbers
//  프로그래머스
//  없는 숫자 더하기
//  Created by Park Jungwoo on 2022/03/04.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    var sum = 45
    for number in numbers {
        switch(number){
        case 1:
            sum -= 1
        case 2:
            sum -= 2
        case 3:
            sum -= 3
        case 4:
            sum -= 4
        case 5:
            sum -= 5
        case 6:
            sum -= 6
        case 7:
            sum -= 7
        case 8:
            sum -= 8
        case 9:
            sum -= 9
        default:
            break
        }
    }

    return sum
}

print(solution([1,2,3,4,6,7,8,0]))
