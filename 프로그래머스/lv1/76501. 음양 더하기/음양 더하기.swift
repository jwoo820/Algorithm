import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer = 0
    for (i, value) in absolutes.enumerated() {
        if signs[i] {
            answer += value
        } else {
            answer -= value
        }
    }
    
    return answer
}