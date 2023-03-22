import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    for command in commands {
        var arr = array[(command[0]-1)..<command[1]].sorted()
        answer.append(arr[command[2]-1])
    }
    
    return answer
}