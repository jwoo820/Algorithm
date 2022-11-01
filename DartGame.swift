//
//  main.swift
//  DartGame
//  프로그래머스
//  [1차] 다트게임
//  Created by Park Jungwoo on 2022/10/30.
//

import Foundation

func solution(_ dartResult:String) -> Int {
    var scoreList = dartResult.split(whereSeparator: {$0.isLetter||$0=="*"||$0=="#"}).map{Int($0)!} // 이거 기준으로 자름
    let optionsList = dartResult.split(whereSeparator: {$0.isNumber})   // 숫자가 아닌거 배열로 나옴
    
    for i in optionsList.enumerated() {
        
        for j in String(i.element) {
            let index = i.offset
            switch String(j) {
            case "S":
                break;
            case "D":
                scoreList[index] *= scoreList[index]
            case "T":
                scoreList[index] *= scoreList[index]*scoreList[index]
            case "*":
                if index != 0 {
                    scoreList[index-1] *= 2
                }
                scoreList[index] *= 2
            case "#":
                scoreList[index] *= -1
            default:
                print("hi")
            }
        }
        
    }
    
    return scoreList.reduce(0, +)
}

print(solution("1S2D*3T"))
