import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var queue1 = queue1
    var queue2 = queue2
    
    var sum1 = queue1.reduce(0,+)
    var sum2 = queue2.reduce(0,+)
    var header1 = 0
    var header2 = 0
    
    var length = queue1.count
    
    for i in 0..<length*3 {
        if sum1 > sum2 {
            let first = queue1[header1]
            queue2.append(first)
            sum1 -= first
            sum2 += first
            header1 += 1
        } else if sum1 < sum2 {
            let first = queue2[header2]
            queue1.append(first)
            sum2 -= first
            sum1 += first
            header2 += 1
        } else {
            return i
        }
    }
    
    return -1
}