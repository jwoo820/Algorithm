import Foundation

func solution(_ n: Int) -> Int {
    var answer = 0
    var chess = Array(repeating: 0, count: n)
    
    // 대각선 체크
    func isSafe(_ row: Int, _ col: Int) -> Bool {
        for i in 0..<row {
            let diff = abs(chess[i] - col)  // 
            if diff == 0 || diff == row-i {
                return false
            }            
        }
        return true
    }
    
    func dfs(_ row: Int) {
        if row == n {
            answer += 1
            return
        }
        
        for col in 0..<n {
            if isSafe(row, col) {
                chess[row] = col
                dfs(row+1)
            }
        }
    }
    
    dfs(0)
    
    return answer
}
