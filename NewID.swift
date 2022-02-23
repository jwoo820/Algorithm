//
//  main.swift
//  NewID
//  프로그래머스
//  신규아이디추천
//  카카오 블라인드 채용 2021
//  Created by Park Jungwoo on 2022/02/23.
//

import Foundation

func solution(_ new_id:String) -> String {
    
    var myID:String = new_id
    //step1
    myID = myID.lowercased()
    //step2
    var newID:String = ""
    
    for i in myID {
        if i.isLetter || i.isNumber || i=="-" || i=="_" || i=="."{
            newID.append(i)
        }
    }
    //step3
    while newID.contains(".."){
        newID = newID.replacingOccurrences(of: "..", with: ".")
    }
    //step4
    if newID.hasPrefix("."){
        newID.removeFirst()
    }
    if newID.hasSuffix("."){
        newID.removeLast()
    }
    //step5
    if newID == ""{
        newID = "a"
    }
    //step6
    if newID.count > 16 {
        let index = newID.index(newID.startIndex, offsetBy: 15)
        newID = String(newID[newID.startIndex..<index])
        if newID.hasSuffix("."){
            newID.removeLast()
            
        }
    }
    //step7
    if newID.count < 3 {
        newID = newID.padding(toLength: 3, withPad: String(newID.last!), startingAt: 0)
    }
    return newID
}

print(solution("...!@BaT#*..y.abcdefghijklm"))

