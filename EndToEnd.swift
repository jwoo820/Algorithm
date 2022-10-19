// 프로그래머스
// 영어 끝말잇기
import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    // 1. 끝말잇기가 안될 경우 -> 오류
    // 2. 같은 말을 할 경우(중복) -> 오류
    // 3. 탈락자가 없을 경우 -> [0,0]
    
    var db: [String] = [words[0]]

        for i in 1..<words.count {
            //중복된 경우
            if db.contains(words[i]) {
                return [i%n+1,i/n+1]
            }
            // 끝말잇기가 안될 경우
            var s1 = words[i-1].last
            var s2 = words[i].first
            if s1 != s2 {
                return [i%n+1,i/n+1]
            }
            
            db.append(words[i])
        }
    
    return [0,0]
}


print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))


// 1. 의사소통이 잘 안됬다고 생각 ->
// 잘한점 : 페어 프로그래밍을 하니깐 어려운 부분을 보다 쉽고 빠르게 극복한거 같음
// 부족한 점 : 설명하는 스킬이 부족함, 집중력이 떨어지니깐 상대방에서 너무 의존하는거 같음(한명이 일방적으로 코딩함)
