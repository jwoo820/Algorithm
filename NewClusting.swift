//
//  main.swift
//  NewsClusting
//  프로그래머스
//  뉴스 클러스터링
//  Created by Park Jungwoo on 2022/11/15.
//

import Foundation

// 자카도 유사도 = 교집합의 크기를 합집합의 크기로 나눈 값
// A, B 모두 공집할일 땐 1임


func solution(_ str1:String, _ str2:String) -> Int {
    // 1. 두글자씩 끊어서 다중집합으로 만듬
    // 2. 영문자만 유효함, 특수문자 안됨
    // 3. 대소문자 같음
    var arr1: [String] = []
    var arr2: [String] = []
    
    
    // 공백 없애고, 소문자
    let newStr1 = Array(str1).map{$0.lowercased()}
    let newStr2 = Array(str2).map{$0.lowercased()}
    
    
    
    // 부분집합 만들어줌
    for i in 1..<newStr1.count {
        let first = String(newStr1[i-1])
        let second = String(newStr1[i])
        arr1.append(first+second)
    }
    
    for i in 1..<newStr2.count {
        let first = String(newStr2[i-1])
        let second = String(newStr2[i])
        arr2.append(first+second)
    }

    // 영문자 빼고 모두 제거

    let fliteredArr1 = arr1.filter { i in
        i.filter { $0.isLetter }.count == 2
    }
    
    let fliteredArr2 = arr2.filter { i in
        i.filter { $0.isLetter }.count == 2
    }
    
//    print(fliteredArr1)
//    print(fliteredArr2)
    
    
    
    var interSection: [String] = []

    var set1: [String] = fliteredArr1
    var set2: [String] = []
    
    // 같을 경우
    if fliteredArr1 == fliteredArr2 {
        return 65536
    }
    
    for i in 0..<fliteredArr2.count {
        let a = fliteredArr2[i]
        set2.append(a)
        if set1.contains(a) {
            set1.remove(at: set1.firstIndex(of: a)!)
            set2.remove(at: set2.firstIndex(of: a)!)
            interSection.append(a)
        }
    }
    
    // 교집합 확인

    // 합집합
    var union: [String] = set1 + set2 + interSection

//    print(union)
//    print(interSection)
//    print(set1)
//    print(set2)
    
    return interSection.isEmpty && union.isEmpty ? 65536 :Int(Double(interSection.count)/Double(union.count)*65536)
}

//print(solution("FRANCE", "french"))

//print(solution("aa1+aa2", "AAAA12"))

print(solution("handshake", "shake hands"))

// ha an nd ds sh ha ak ke
// sh ha ak ke ha an nd ds
// 교집합 : ha an nd ds sh

//print(solution("E=M*C^2", "e=m*c^2"))


