import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var answer: [String] = []
    var cards1 = cards1
    var cards2 = cards2
    
    for word in goal {
            if !cards1.isEmpty && cards1.first! == word {
                answer.append(cards1.removeFirst())
            }
            if !cards2.isEmpty && cards2.first! == word {
                answer.append(cards2.removeFirst())
            }
    }

    return answer.joined() == goal.joined() ? "Yes" : "No"
}