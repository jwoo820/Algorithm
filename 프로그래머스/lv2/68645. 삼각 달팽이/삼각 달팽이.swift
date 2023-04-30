import Foundation

func solution(_ n:Int) -> [Int] {
    var answer: [[Int]] = []

    for i in 1...n {
        var arr = Array(repeating: 0, count: i)
        answer.append(arr)
    }
    var index = 0
    var (x, y) = (-1, 0)
    
    for i in 0..<n {
        for j in i..<n {
            if i%3 == 0 {
                x += 1
            } else if i % 3 == 1 {
                y += 1
            } else {
                x -= 1
                y -= 1
            }
            index += 1
            answer[x][y] = index
        }
    }
    
    // print(answer)
    return answer.flatMap{$0}
}