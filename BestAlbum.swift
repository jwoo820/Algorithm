//
//  main.swift
//  BestAlbum
//  
//  Created by Park Jungwoo on 2023/02/24.
//  프로그래머스
//  베스트앨범
//  해시


// 1. 속한 노래가 많이 재생된 장르
// 2. 장르 내에서 많이 재생된 노래
// 3. 장르 내에서 재생 횟수가 같은 노래 중에는 고유 번호가 낮은 노래를 먼조 수록
import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    // dic : genre : [index, play[index]]
    var dic: [String: [[Int]]] = [:]
    var answer: [Int] = []
    
    for (index, genre) in genres.enumerated() {
        if dic[genre] != nil {
            dic[genre]!.append([index, plays[index]])
        } else {
            dic[genre] = [[index, plays[index]]]
        }
    }
//    print(dic)
    
    // 1. 속한 노래가 많이 재생된 장르 정렬
    let sortedDic = dic.sorted {
        $0.value.map{ $0[1] }.reduce(0, +) > $1.value.map{ $0[1] }.reduce(0, +)
    }
//    print(sortedDic)

    
    for i in 0..<sortedDic.count {
        // 2. 장르 내에서 많이 재생된 노래
        let songs = sortedDic[i].value.sorted{ $0[1] == $1[1] ? false : $0[1] > $1[1]}
//        print(songs)
        
        // 3 최대 2개만 등록
        for j in 0..<songs.count {
            if j > 1 {
                break
            }
            answer.append(songs[j][0])
        }
    }
//    print(answer)
    return answer
}

print(solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500]))
