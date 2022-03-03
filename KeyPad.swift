//
//  main.swift
//  KeyPad
//  프로그래머스
//  키패드 누르기
//  Created by Park Jungwoo on 2022/03/03.
//

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    
    var leftPos = 10    // * -> 10
    var rightPos = 12   // # -> 12
    
    var Pos = hand == "right" ? "R" : "L"
    
    var answer = ""
    
    for i in numbers {
        let number = i == 0 ? 11 : i     // 0 -> 11 로 바꿈
        switch(number){
        case 2, 5, 8, 11:
            let leftTmp = (number - leftPos).magnitude
            let rightTmp = (number - rightPos).magnitude
            
            var leftDis = (leftTmp/3) + (leftTmp%3)
            var rightDis = (rightTmp/3) + (rightTmp%3)
            
            if leftDis == rightDis {
                answer += Pos
            }else {
                answer += leftDis < rightDis ? "L" : "R"
            }
            if answer.last == "L" {
                leftPos = number
            }
            else {
                rightPos = number
            }
        case 1, 4, 7:
            answer += "L"
            leftPos = number
        case 3, 6, 9:
            answer += "R"
            rightPos = number
        default:
            break
        }
    }
    
    return answer
}

print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right"))
