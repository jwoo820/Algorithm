import Foundation

func solution(_ s:String) -> [Int] {
    
    var s = s
    var countZero = 0
    var count = 0
    
    while s != "1" {
        var tmp = s.replacingOccurrences(of: "0", with: "")
        countZero += s.count - tmp.count
        var radix = String(tmp.count , radix: 2)
        count += 1
        s = radix
    }
    
    
    return [count, countZero]
}