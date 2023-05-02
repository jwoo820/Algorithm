import Foundation

func solution(_ s:String) -> [Int] {
    var answer: [String] = []
    var s = s
    s.removeFirst()
    s.removeLast()
    var tuple = s.components(separatedBy: "}")
    tuple.removeLast()
    tuple = tuple.map {
        var t = $0
        if t.first! == "," {
            t.removeFirst()
        }
        t.removeFirst()
        
        return t
    }
    
    var arr: [[String]] = []
    for t in tuple {
        var split = t.components(separatedBy: ",")
        arr.append(split)
    }

    arr.sort(by: {$0.count < $1.count})
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if !answer.contains(arr[i][j]) {
                answer.append(arr[i][j])
            }
        }
    }
    return answer.map{Int($0)!}
}