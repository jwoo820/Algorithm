import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var answer = 0
    var stack: [Int] = []
    
    for i in ingredient {
        stack.append(i)
        let check = stack.suffix(4)
        if check == [1, 2, 3, 1] {
            stack.removeLast(4)
            answer += 1
        }
    }

    return answer
}