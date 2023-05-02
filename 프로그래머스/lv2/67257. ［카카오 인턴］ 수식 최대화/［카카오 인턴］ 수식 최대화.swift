import Foundation

func solution(_ expression:String) -> Int64 {
    var answer = 0
    
    var visited: [Bool] = Array(repeating: false, count: 3)
    var permu: [[String]] = []
    
    func dfs(_ arr: [String]) {
        if arr.count == 3 {
            permu.append(arr)
            return
        }
        
        for i in 0..<3 {
            if !visited[i] {
                visited[i] = true
                dfs(arr + [["+", "-", "*"][i]])
                visited[i] = false
            }
        }
    }
    
    dfs([])
    
    var num = expression.components(separatedBy: ["+", "-", "*"]).map{Int($0)!}
    var ex = expression.filter{!$0.isNumber}.map{String($0)}
    
    for priority in permu {
        var excopy = ex
        var numcopy = num
        for p in priority {
            while excopy.contains(p) {
                let index = excopy.firstIndex(of: p)!
                var result = 0
                switch p {
                    case "+":
                        result = numcopy[index] + numcopy[index+1]
                    case "-":
                        result = numcopy[index] - numcopy[index+1]
                    case "*":
                        result = numcopy[index] * numcopy[index+1]
                    default:
                    break
                }
                numcopy.remove(at: index)
                numcopy.remove(at: index)
                numcopy.insert(result, at: index)
                excopy.remove(at: index)
            }


        }
                    answer = max(answer, abs(numcopy.first!))
    }
    
    return Int64(answer)
}
