import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer: [Int] = Array(repeating: -1, count: numbers.count)
    var stack: [Int] = []
    
    for (i, number) in numbers.enumerated() {
        
        while !stack.isEmpty && numbers[stack.last!] < number {
            answer[stack.removeLast()] = number
        }
        stack.append(i)
    }
    
    return answer
}