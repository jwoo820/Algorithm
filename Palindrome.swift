//
//  main.swift
//  Palindrome
//  프로그래머스
//  가장 긴 팰린드롬
//  Created by Park Jungwoo on 2022/11/02.
//

import Foundation

func solution(_ s:String) -> Int {
//    let arr = Array(s)
//    var result: [String] = []
//
//    if s.count == 0 {
//        return result.count
//    }
//
//    result.append("")
//    for i in 0..<arr.count {
//        let count = result.count
//        for j in 0..<count {
//            result.append(result[j] + String(arr[i]))
//        }
//    }
////    print(result)
//
//    var sort = result.sorted{$0.count > $1.count}
//
//
//    for i in 0..<sort.count {
//        if sort[i] == String(sort[i].reversed()) {
//            return sort[i].count
//        }
//    }
//    return 1
    
    // 맞는지 잘 모르겠음
    
    // 전체 루프를 돌면서
    // 왼쪽과 오른쪽을 검사하여 같으면 반환 해줌
    
    let arr = Array(s)
    let n = arr.count
    
    // 길이가 가장 긴 문자열 부터 확인해줌
    for len in (1...n).reversed() {
        // 왼쪽부터 기준을 잡고, 왼쪽 오른쪽 비교
        for left in (0...n-len) {
            let right = left + len - 1
            var isPalindrome = true
            // 가장 바깥쪽 부터 비교하면서, 안쪽까지 모두 비교 해줌
            for i in 0..<len/2 {
                if arr[left+i] != arr[right-i] {
                    isPalindrome = false
                    break
                }
            }
            if isPalindrome {
                return len
            }
        }
    }

    return 1
}

print(solution("abcdcba"))
