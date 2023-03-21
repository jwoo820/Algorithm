import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var bucket: [Int] = []
    var stack: [Int] = []
    
    for move in moves {
        for i in 0..<board.count {
            if !(board[i][move-1] == 0) {
                stack.append(board[i][move-1])
                if bucket.last == board[i][move-1] {
                    bucket.removeLast()
                } else {
                    bucket.append(board[i][move-1])
                }
                board[i][move-1] = 0
                break
            }
        }
    }
    
    
    return stack.count - bucket.count
}