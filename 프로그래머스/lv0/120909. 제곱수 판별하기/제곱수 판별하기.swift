import Foundation

func solution(_ n:Int) -> Int {
    var answer = 2
    for i in 0...n {
        if i*i == n {
            answer = 1
            break
        }
    }
    return answer
}