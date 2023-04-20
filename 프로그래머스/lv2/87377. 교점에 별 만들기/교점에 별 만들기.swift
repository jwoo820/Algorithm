import Foundation

func solution(_ line:[[Int]]) -> [String] {
    
    var meet: [(Double, Double)] = []
    
    
    func dfs(_ start: Int, _ arr: [[Int]]) {
        if arr.count == 2 {
            let first = arr.first!
            let second = arr.last!
            
            let (a, b, e) = (Double(first[0]), Double(first[1]), Double(first[2]))
            let (c, d, f) = (Double(second[0]), Double(second[1]), Double(second[2]))
            
            if a*d == b*c { return }
            
            let x = (b*f - e*d)/(a*d - b*c)
            let y = (e*c - a*f)/(a*d - b*c)
            // 소수 판별
            if ceil(x) == x && ceil(y) == y {
                meet.append((x,y))
            }
            return
        }
        
        for i in start..<line.count {
                dfs(i+1 ,arr + [line[i]])
            }
        } 
    dfs(0, [])
    // (x, y)
    
    var maxY = Int.min
    var maxX = Int.min
    
    var minY = Int.max
    var minX = Int.max
    
    var point = meet.map{ [Int($0.0), Int($0.1)] }
    
    for i in point {
        maxY = max(maxY, i.last!)
        maxX = max(maxX, i.first!)
        
        minY = min(minY, i.last!)
        minX = min(minX, i.first!)
    }

    var answer: [String] = []
    
    for i in stride(from: maxY, through: minY, by: -1) {
        var temp = ""
        for j in minX...maxX {
            if point.contains([j,i]) {
                temp += "*"
            } else {
                temp += "."
            }
        }
        answer.append(temp)
    }
    
    return answer
}