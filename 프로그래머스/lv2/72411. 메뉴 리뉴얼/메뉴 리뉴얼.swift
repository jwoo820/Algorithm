import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var orders = orders.map{ Array($0.map{ String($0) }).sorted() }
    var combination: [String: Int] = [:]
    for order in orders {
        var visited = Array(repeating: false, count: order.count)

        func dfs(_ start: Int, _ arr: [String]) {
            
            if arr.count > 1 {
                var result = arr.joined()
                combination[result, default: 0] += 1                
            }

            if arr.count == order.count {
                return
            }
            
            for i in start..<order.count {
                if !visited[i] {
                    visited[i] = true
                    var str = Array(order).map{String($0)}
                    dfs(i+1, arr + [str[i]])
                    visited[i] = false
                }

            }
        }        
        
        dfs(0, [])
        
    }
    
    var answer: [String] = []
    
    for c in course {
        var combi = combination.filter{ $0.key.count == c }.filter{ $0.value != 1 }
        var max = combi.filter{ $0.value == combi.values.max() }.forEach { answer.append($0.key) }
    }

    return answer.sorted()
}
