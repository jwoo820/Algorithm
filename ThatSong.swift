//
//  main.swift
//  ThatSong
//  프로그래머스
//  [3차] 방금 그곡
//  Created by Park Jungwoo on 2022/11/02.
//

import Foundation

func solution(_ m:String, _ musicinfos:[String]) -> String {
    // 1. 얼마나 재생됬는지 구하기
    // 2. 재생시간만큼 노래 악보이어 붙이기
    // 3. 사용자가 들은 노래(m)가 2에서 붙인 노래에 포함되는지 확인
    
    var answer: [(Int, String)] = []
    
    for musicinfo in musicinfos {
        
        let arr = musicinfo.components(separatedBy: ",")
        let startTime = arr[0].split(whereSeparator: {$0 == ":"}).map{Int($0)!} //11, 50

        let endTime = arr[1].split(whereSeparator: {$0 == ":"}).map{Int($0)!} //12, 04
        
        // 재생시간 구함
        let playTime = (endTime[0]-startTime[0])*60+endTime[1]-startTime[1]
        // #이 포함된 문자열을 하나의 문자열로 치환
        let user = m
            .replacingOccurrences(of: "C#", with: "c")
            .replacingOccurrences(of: "D#", with: "d")
            .replacingOccurrences(of: "F#", with: "f")
            .replacingOccurrences(of: "G#", with: "g")
            .replacingOccurrences(of: "A#", with: "a")
        
        let song = arr[3]
            .replacingOccurrences(of: "C#", with: "c")
            .replacingOccurrences(of: "D#", with: "d")
            .replacingOccurrences(of: "F#", with: "f")
            .replacingOccurrences(of: "G#", with: "g")
            .replacingOccurrences(of: "A#", with: "a")
        
        var songPlayed = ""
        var songArr = Array(song)
        for i in 0..<playTime {
            songPlayed += String(songArr[i%songArr.count])
        }
        
        if songPlayed.contains(user) {
            answer.append((playTime, arr[2]))
        }
    }
    
    if answer.count > 1 {
        var a = answer.sorted{ $0.0 > $1.0 }
        return a[0].1
    }
    
    return answer.isEmpty ? "(None)" : answer[0].1
}

print(solution("ABCDEFG", ["11:50,12:04,HELLO,CDEFGAB", "12:57,13:11,BYE,CDEFGAB"]))
