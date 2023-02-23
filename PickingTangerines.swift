//
//  main.swift
//  PickingTangerines
//
//  Created by Park Jungwoo on 2023/02/23.
//

import Foundation

// 갯수가 많은 것부터 넣아야 최소가 됨
func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    // 귤종류 : 갯수
    var box: [Int: Int] = [:]
    
    for i in tangerine {
        let num = box[i] ?? 0
        box[i] = num + 1
    }

    let sortedBox = box.values.sorted(by: >)
    var sum = 0
    var answer = 0
        
    print(sortedBox)
    for (offset, element) in sortedBox.enumerated() {
        if sum + element >= k {
            answer = offset + 1
            break
        }
        sum += element
    }
    
    return answer
}

//print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))

print(solution(4, [1, 3, 2, 5, 4, 5, 2, 3]))
