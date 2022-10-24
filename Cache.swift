//
//  main.swift
//  Cache
//  프로그래머스
//  캐시
//  Created by Park Jungwoo on 2022/10/24.
//

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var time = 0                // 시간
    var cache: [String] = []    // cache 배열
    
    // 대소문자가 같다고 했으니 다 소문자로 만들어줌
    let lowerCity = cities.map {$0.lowercased()}
    
    if cacheSize == 0 {
        return 5*cities.count
    }
    
    for city in lowerCity {
        // cache에 있을 경우
        if cache.contains(city) {
            // 원래 있던 cache 삭제
            var restore = cache.filter{ $0 != city}
            // 맨 앞으로 삽입
            restore.insert(city, at: 0)
            cache = restore
            time += 1
        } else {
            // cache의 크기가 사이즈 보다 클 경우 맨 뒤 cache를 삭제함
            if cache.count > cacheSize-1 {
                cache.removeLast()
            }
            // cache가 miss 일 경우 cache의 제일 앞으로 옴
            cache.insert(city, at: 0)
            // miss 일 경우 5초
            time += 5
        }
    }
    
    return time
}

//print(solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"]))

print(solution(0, ["A", "b", "a", "a", "a"]))

//print(solution(2, ["A", "a", "A","b", "b", "b","c", "c", "c"]))
