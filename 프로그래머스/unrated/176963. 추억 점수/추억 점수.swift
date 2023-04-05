import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var score: [String: Int] = [:]
    var answer: [Int] = []
    for i in 0..<name.count {
        score[name[i]] = yearning[i]
    }
    
    for i in photo {
        var count = 0
        for name in i {
            count += score[name, default: 0]
        }
        answer.append(count)
    }
    
    return answer
}