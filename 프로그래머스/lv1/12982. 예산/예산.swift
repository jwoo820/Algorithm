import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sort = d.sorted()
    var sum = 0
    var answer = 0
    for i in sort {
        if budget < sum + i {
            break
        } else {
            answer += 1
            sum += i
        }
    }
    
    return answer
}