import Foundation

func solution(_ cards:[Int]) -> Int {
    var dic: [Int: Bool] = [:]
    var groups: [[Int]] = []
    for card in cards {
        dic[card] = true
    }
    
    for card in cards {
        if dic[card]! {
            var group: [Int] = []
            var temp = card
            while dic[temp]! {
                group.append(temp)
                dic[temp]! = false
                temp = cards[temp-1]
            }
            groups.append(group)
        }
    }
    // print(groups)
    
    var answer = groups.map{$0.count}.sorted(by: >)
    
    // if answer.isEmpty { return 0 }
    return answer.count < 2 ? 0 : answer[0]*answer[1]
}