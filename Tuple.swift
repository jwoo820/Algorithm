//
//  main.swift
//  Tuple
//  프로그래머스
//  튜플
//  Created by Park Jungwoo on 2022/05/20.
//

import Foundation

func solution(_ s:String) -> [Int] {
    
    var arr: [[Int]] = []
    var s = s
    s.removeFirst()
    s.removeLast()
    
    let tuples = s.split(separator: "}")
    
    for i in 0..<tuples.count {
        var sliced = tuples[i].dropFirst()
        if sliced.first! == "{" {
            sliced = sliced.dropFirst()
        }
        let slicedInteger = sliced.split(separator: ",")
        
        var arr1:[Int] = []
        
        for j in slicedInteger {
            arr1.append(Int(j)!)
        }
        arr.append(arr1)
    }

    
    var result:[Int] = []
    // 배열 길이 별로 정렬
    arr.sort{$0.count < $1.count}
    
    for i in 0..<arr.count {
        if i == 0 {
            result.append(arr[i].first!)
        } else {
            for j in 0..<arr[i].count {
                if !result.contains(arr[i][j]) {
                    result.append(arr[i][j])
                }
            }
        }
        
    }

    return result
}

//print(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"))
print(solution("{{1,2,3},{2,1},{1,2,4,3},{2}}"))
print(solution("{{20,111},{111}}"))
