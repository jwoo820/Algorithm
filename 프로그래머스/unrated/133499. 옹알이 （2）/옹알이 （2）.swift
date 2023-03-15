import Foundation

func solution(_ babbling:[String]) -> Int {
    var answer = 0
    for i in babbling {
        var word = i
        if !i.contains("ayaaya") && !i.contains("yeye") && !i.contains("woowoo") && !i.contains("mama") {
            word = word.replacingOccurrences(of: "aya", with: " ")
            word = word.replacingOccurrences(of: "ye", with: " ")
            word = word.replacingOccurrences(of: "woo", with: " ")
            word = word.replacingOccurrences(of: "ma", with: " ")
            word = word.filter{$0 != " "}
            if word.isEmpty {
                answer += 1
            }
        }
    }
    
    return answer
}