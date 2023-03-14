import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    // 달 -> 날짜로 변경
    
    var termsDic: [String: Int] = [:]
    for term in terms {
        let separate = term.components(separatedBy: " ")
        termsDic[separate[0]] = Int(separate[1])! * 28
    }
    
    // today - privacies를 날짜로 계산
    var answer: [Int] = []
    
    var todayArr = today.components(separatedBy: ".").map{Int($0)!}
    for (index, privacy) in privacies.enumerated() {
        let separate = privacy.components(separatedBy: " ")
        // 개인정보 날짜
        let privacyArr = separate[0].components(separatedBy: ".").map{Int($0)!}
        let privacyType = separate[1]
//         // 날짜 계산 해야함
        let todayDate = todayArr[0]*12*28 + todayArr[1]*28 + todayArr[2]
        let privacyDate = privacyArr[0]*12*28 + privacyArr[1]*28 + privacyArr[2] - 1
        
        let date = todayDate - privacyDate
        if date > termsDic[privacyType]! {
            answer.append(index+1)
        }
    }
    
    return answer
}