import Foundation

func solution(_ order:[Int]) -> Int {
    var stack: [Int] = []
    var index = 0
    
    for i in 1...order.count {
        stack.append(i)
        while !stack.isEmpty && stack.last! == order[index] {
            index += 1
            stack.removeLast()
        }
    }
    
    return index
}