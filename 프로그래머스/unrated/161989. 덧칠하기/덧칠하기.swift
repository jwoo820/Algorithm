import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    var painted = 0
    var answer = 0
    
    for i in section {
        if i < painted {
            continue
        }
        
        answer += 1
        painted = i + m
    }
    
    return answer
}