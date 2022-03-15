//
//  main.swift
//  MakingPrimeNumber
//  프로그래머스
//  소수만들기
//  Created by Park Jungwoo on 2022/03/15.
//

import Foundation

func solution(_ nums:[Int]) -> Int {
    
    func isPrime(i:Int,j:Int,k:Int)-> Bool {
        let sum = i+j+k
        
        for a in 2..<sum {
            if sum % a == 0 {
                return false
            }
        }
        return true
    }
    
    var answer = 0
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                if isPrime(i: nums[i], j: nums[j], k: nums[k]) {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}

print(solution([1,2,7,6,4]))
print(solution([1,2,3,4]))
