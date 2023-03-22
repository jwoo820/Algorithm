import Foundation

func solution(_ board:[String]) -> Int {
    // BFS 최단거리 알고리즘
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    var start = (0, 0)
    var board = board.map{Array($0)}
    var visited = Array(repeating: Array(repeating: -1, count: board[0].count), count: board.count)
    
    for (i, row) in board.enumerated() {
        for (j, col) in row.enumerated() {
            if col == "R" { start = (i, j) }
        }
    }
    
    func bfs() -> Int {
        var queue: [(Int, Int)] = []
        queue.append((start.0, start.1))
        visited[start.0][start.1] = 0
        while !queue.isEmpty {
            var first = queue.removeFirst()
            let (x, y) = (first.0, first.1)
            
            if board[x][y] == "G" {
                return visited[x][y]
            }
            
            for dir in 0...3 {
                var nx = x
                var ny = y
                while true {
                    nx += dx[dir]
                    ny += dy[dir]
                    
                    if !(0 <= nx && nx < board.count) || !(0 <= ny && ny < board[0].count) {
                        // 벽을 만나서 1칸 되돌아감
                        nx -= dx[dir]
                        ny -= dy[dir]
                        break
                    }
                    // 장애물을 만났을 때 
                    if board[nx][ny] == "D"{
                        nx -= dx[dir]
                        ny -= dy[dir]
                        break
                    }
                }    
                // 방문 처리 및 거리 계산
                if visited[nx][ny] == -1 {
                    visited[nx][ny] = visited[x][y] + 1
                    queue.append((nx, ny))
                }
                
            }
        }
        return -1
    }
    
    return bfs()
}