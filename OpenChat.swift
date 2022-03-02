//
//  main.swift
//  OpenChat
//  프로그래머스
//  오픈채팅방
//  Created by Park Jungwoo on 2022/03/02.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    
    var recordArray:[[String]] = []
    var uidname: [String:String] = [:]
    var message:[String] = []
    
    for msg in record {
        recordArray.append(msg.split(separator: " ").map(String.init))
    }

    for msg in recordArray {
        if msg[0] == "Enter" || msg[0] == "Change" {
            uidname[msg[1]] = msg[2]
        }
    }
    
    for msg in recordArray {
        switch msg[0] {
        case "Enter":
            message.append("\(uidname[msg[1]]!)님이 들어왔습니다.")
        case "Leave":
            message.append("\(uidname[msg[1]]!)님이 나갔습니다.")
        default:
            break
        }
    }
    return message
}

print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))
