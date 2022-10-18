//
//  main.swift
//  MySortingStrings
//  프로그래머스
//  문자열 내 마음대로 정렬하기
//  Created by Park Jungwoo on 2022/10/18.
//

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {

    return strings.sorted { s1, s2 in
        let startIndex1 = s1.index(s1.startIndex, offsetBy: n)
        let startIndex2 = s2.index(s2.startIndex, offsetBy: n)
        let range1 = startIndex1...
        let range2 = startIndex2...
        
        if s1[range1].first == s2[range2].first {
            return s1 < s2
        }
        
        return s1[range1] < s2[range2]
    }
}

print(solution(["sun", "bed", "car"], 1))

