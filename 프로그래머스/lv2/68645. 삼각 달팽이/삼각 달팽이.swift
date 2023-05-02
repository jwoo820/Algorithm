import Foundation

func solution(_ n:Int) -> [Int] {
    var answer: [[Int]] = []
    var index = 1
    var (x, y) = (-1, 0)
    
    for i in 1...n {
        answer.append(Array(repeating: 0, count: i))
    }
        
    for i in 0..<n {
        for j in i..<n {
            if i%3 == 0 {        // 아래
                x += 1      
            } else if i%3 == 1 { // 오른쪽 이동
                y += 1
            } else {             // 위
                x -= 1
                y -= 1
            }
            answer[x][y] = index
            index += 1
        }
    }
    
    return answer.flatMap{$0}
}