import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    var max = 0
    var answer = 0
    
    for i in section {
        if i < max {
            continue
        }
        
        answer += 1
        max = i + m
    }
    
    return answer
}