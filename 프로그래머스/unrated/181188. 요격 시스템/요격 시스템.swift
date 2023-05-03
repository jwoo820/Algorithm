import Foundation

func solution(_ targets:[[Int]]) -> Int {
    var targets = targets.sorted(by: {$0.last! < $1.last!})
    var answer = 0
    var s = 0
    var e = 0
    
    for target in targets {
        if target[0] >= e {
            answer += 1
            e = target[1]
        }
    }
    return answer
}