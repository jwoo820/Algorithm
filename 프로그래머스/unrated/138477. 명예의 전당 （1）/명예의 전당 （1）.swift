import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    // 큐
    var answer: [Int] = []
    var queue: [Int] = []

    for i in score {
        queue.append(i)
        queue.sort()
        
        if queue.count > k {
            queue.removeFirst()
        }
        
        answer.append(queue.first!)
        
    }
    
    return answer
}