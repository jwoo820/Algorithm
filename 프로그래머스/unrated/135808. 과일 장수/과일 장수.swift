import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var apple = score.sorted(by: >)
    var box: [[Int]] = []
    var answer = 0
    for i in stride(from: 0, to: score.count, by: m) {
        if i+m <= score.count {
            box.append(Array(apple[i...i+m-1]))
        }
    }

    
    for i in box {
        let min = i.min()
        answer += m * min!
    }
    

    return box.isEmpty ? 0 : answer
}