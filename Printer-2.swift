//
//  main.swift
//  Printer-2
//  프로그래머스
//  프린터
//  스택/큐
//  Created by Park Jungwoo on 2023/02/28.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    // 문서 : 우선순위
    var docs: [(Int, Int)] = priorities.enumerated().map { ($0.offset, $0.element) }
    let target = docs[location].0
    var queue: [(Int, Int)] = []
//    print(docs)
    while !docs.isEmpty {
        let j = docs.first!
        let check = docs.filter { $0.1 > j.1 }
//        print(check)
        if check.isEmpty {
            let j = docs.removeFirst()
            queue.append(j)
        } else {
            let j = docs.removeFirst()
            docs.append(j)
        }
        
    }
//    print("target : \(target)")
//    print(docs)
//    print(queue)
    var answer = 0
    for i in 0..<queue.count {
        if queue[i].0 == target {
            answer = i + 1
        }
    }
    
    return answer
}

//print(solution([2, 1, 3, 2], 2))

print(solution([1,2,3,4], 3))
//print(solution([1, 1, 9, 1, 1, 1], 0))

// A B C D
// 2 1 3 2
// steps
// 2 1 3 2
// 1 3 2 2
// 3 2 2 1
