import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer: [Int] = Array(Int(left)...Int(right))
    
    return answer.map {
        max($0/n+1, $0%n+1)
    }
}