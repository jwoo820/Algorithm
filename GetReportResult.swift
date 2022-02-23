//
//  main.swift
//  GetReportResult
//  프로그래머스
//  신고결과받기
//  2022 카카오 블라인드 채용
//  Created by Park Jungwoo on 2022/02/22.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) ->[Int] {
    
    var idNumber:[String:Int] = [:]
    
    // id_list 순으로 idNumber 정렬
    for(i, id) in id_list.enumerated() {
        idNumber[id] = i
    }

    // 중복제거 + 신고한사람, 신고당한사람 정렬
    var reportInfo:[String:Set<String>] = [:]
    
    for r in report {
        let split = r.split(separator: " ")
        let report = String(split[0])   // 신고당한사람
        let reported = String(split[1]) // 신고한사람
        
        if reportInfo[reported] == nil {
            reportInfo[reported] = [report]
        }
        else{
            reportInfo[reported]!.insert(report)
        }
    }

    var reportCount:[Int] = Array(repeating: 0, count: id_list.count)
    // k 기준 신고당한 사람 count
    for info in reportInfo {
        if info.value.count >= k{
            for id in info.value{
                reportCount[idNumber[id]!] += 1
            }
        }
    }
    
    return reportCount
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))

print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))
