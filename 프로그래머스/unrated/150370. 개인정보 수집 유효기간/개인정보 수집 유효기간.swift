import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var answer: [Int] = []
    
    var termsDays: [String: Int] = [:]
    
    for term in terms {
        let split = term.components(separatedBy: " ")
        termsDays[split[0]] = Int(split[1])! * 28
    }
    
    let today = convertDay(today)
    
    for (i, privacy) in privacies.enumerated() {
        var split = privacy.components(separatedBy: " ")
        let term = split[1]
        var privacyDay = convertDay(split[0])
        if today - privacyDay >= termsDays[term]! {

            answer.append(i+1)
        }
    }
    
    return answer
}

func convertDay(_ day: String) -> Int {
    var split = day.components(separatedBy: ".")
    var year = Int(split[0])! * 12 * 28
    var month = Int(split[1])! * 28
    var days = Int(split[2])!
    
    return year + month + days
}