//
//  main.swift
//  MockExam
//  프로그래머스
//  모의고사
//  Created by Park Jungwoo on 2022/02/11.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let arrA = [1,2,3,4,5]
    let arrB = [2,1,2,3,2,4,2,5]
    let arrC = [3,3,1,1,2,2,4,4,5,5]
    
    var dic : [Int : Int] = [:]
    for i in 0..<answers.count {
        // 중위 연산자 조지기, dic[key]가 nil 일경우 0 반환 후 -> 1더하기
        if answers[i] == arrA[i%arrA.count] {dic[1] = (dic[1] ?? 0)+1 }
        if answers[i] == arrB[i%arrB.count] {dic[2] = (dic[2] ?? 0)+1}
        if answers[i] == arrC[i%arrC.count] {dic[3] = (dic[3] ?? 0)+1}
    }
    
    let max = dic.values.max()
    // dic 의 최대값을 가지는 배열 추출 -> key값으로 배열 정렬
    let result = dic.filter{
        $0.value == max
    }.keys.sorted()
    return result
}

print(solution([1,3,2,4,2]))
