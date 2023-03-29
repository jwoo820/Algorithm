import Foundation

func solution(_ maps:[String]) -> Int {
    // BFS
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    var start = (0, 0)
    var lever = (0, 0)
    var exit = (0, 0)
    var maps = maps.map{Array($0)}
    var visited = Array(repeating: Array(repeating: -1, count: maps[0].count), count: maps.count)
    
    for (i, row) in maps.enumerated() {
        for (j, col) in row.enumerated() {
            if col == "S" { start = (i, j) }
            else if col == "L" { lever = (i, j) }
            else if col == "E" { exit = (i, j) }
        }
    }
    
    func bfs(_ point: (Int, Int), _ target: String) -> Int {
        var queue: [(Int, Int)] = []
        queue.append((point.0, point.1))
        visited[point.0][point.1] = 0
        
        while !queue.isEmpty {
            var first = queue.removeFirst()
            let (x, y) = (first.0, first.1)
            
            for dir in 0...3 {
                var nx = x+dx[dir]
                var ny = y+dy[dir]

                if !(0 <= nx && nx < maps.count) || !(0 <= ny && ny < maps[0].count) {
                    continue
                }
                
                if maps[nx][ny] == "X" {
                    continue
                }
                
                if visited[nx][ny] == -1 {
                    visited[nx][ny] = visited[x][y] + 1
                    queue.append((nx, ny))
                }
            }
        }
        
        return target == "L" ? visited[lever.0][lever.1] : visited[exit.0][exit.1]
    }
    
    let leverDis = bfs(start, "L")
    visited = Array(repeating: Array(repeating: -1, count: maps[0].count), count: maps.count)
    let exitDis = bfs(lever, "E")

    return (leverDis == -1 || exitDis == -1) ? -1 : leverDis + exitDis
}