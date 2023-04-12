import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var answer = 0
    var wantDic: [String: Int] = [:]
    var tempDic: [String: Int] = [:]
    for i in 0..<want.count {
        wantDic[want[i], default: 0] += number[i]
    }
    
    tempDic = wantDic
    for i in 0..<discount.count-9 {
        let temp = Array(discount[i...i+9])
        for j in temp {
            
            if tempDic[j] == nil { continue }
            tempDic[j]! -= 1
            if tempDic[j]! == 0 { 
                tempDic[j] = nil 
            }
            
        }

        if tempDic.isEmpty {
            answer += 1
        }
        tempDic = wantDic
    }
    return answer
}