import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ arr: [[Int]]) {
        if arr.count == dungeons.count {
            // print(arr)
            var p = k
            for (i, d) in arr.enumerated() {
                if p < d.first! {
                    return
                } else {
                    answer = max(answer, i+1)
                    p -= d.last!
                }
            }
            return
        }
        
        for i in 0..<dungeons.count {
            if !visited[i] {
                visited[i] = true
                dfs(arr + [dungeons[i]])
                visited[i] = false
            }
        }
    }
    
    dfs([])
    
    return answer
}