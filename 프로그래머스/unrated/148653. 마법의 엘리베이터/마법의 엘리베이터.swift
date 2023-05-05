import Foundation

func solution(_ storey:Int) -> Int {
    var answer: Int = Int.max
    
    func dfs(storey: Int) {
        var queue: [(Int, Int)] = [(storey, 0)]
        
        while !queue.isEmpty {
            let (storey, count) = queue.removeLast()
            if storey < 10 {
                answer = min(answer, count + storey, count + 10 - storey + 1)
                continue
            }
            
            let n = storey % 10
            queue.append((storey / 10, count+n))
            queue.append((storey / 10 + 1, count+10-n))
        }
    }
    dfs(storey: storey)
    return answer
}