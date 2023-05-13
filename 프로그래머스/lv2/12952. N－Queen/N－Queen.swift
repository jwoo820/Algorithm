import Foundation

func solution(_ n: Int) -> Int {
    var count = 0
    var positions = [Int](repeating: 0, count: n)
    
    func isSafe(_ row: Int, _ col: Int) -> Bool {
        for i in 0..<row {
            let diff = abs(positions[i] - col)
            if diff == 0 || diff == row - i {
                return false
            }
        }
        return true
    }
    
    func backtrack(_ row: Int) {
        if row == n {
            count += 1
            return
        }
        for col in 0..<n {
            if isSafe(row, col) {
                positions[row] = col
                backtrack(row+1)
            }
        }
    }
    
    backtrack(0)
    return count
}
