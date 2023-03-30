import Foundation

func solution(_ maps:[String]) -> [Int] {
    
    var maps = maps.map{Array($0).map{String($0)}}
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    let row = maps.count
    let col = maps[0].count
    var visited: [[Int]] = Array(repeating: Array(repeating: -1, count: col), count: row)
    
    var answer: [Int] = []
    func dfs(_ x: Int, _ y: Int) -> Int {
        if maps[x][y] == "X" { return 0 }
        var sum = Int(maps[x][y])!
        visited[x][y] = 0
        
        for dir in 0...3 {
            let nx = x + dx[dir]
            let ny = y + dy[dir]
            
            if nx >= row || nx < 0 || ny >= col || ny < 0 { continue }
            if visited[nx][ny] == 0 { continue }
            visited[nx][ny] = 0
            sum += dfs(nx, ny)
        }
        
        return sum 
    }
    
    for i in 0..<row {
        for j in 0..<col {
            if visited[i][j] == 0 || maps[i][j] == "X" { continue }
            let sum = dfs(i, j)
            if sum > 0 {
                answer.append(sum)
            }
        }
    }
    
    return answer.isEmpty ? [-1] : answer.sorted()
}