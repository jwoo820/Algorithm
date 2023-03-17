import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var dicX: [Character: Int] = [:]
    var dicY: [Character: Int] = [:]
    var answer: [String] = []
    
    for i in X {
        dicX[i, default: 0] += 1 
    }

    for i in Y {
        dicY[i, default: 0] += 1 
    }
    
    for i in dicX {
        if dicY[i.key] != nil {
            if i.value > dicY[i.key]! {
                for j in 0..<dicY[i.key]! {
                    answer.append(String(i.key))
                }
            } else {
                for j in 0..<i.value {
                    answer.append(String(i.key))
                }
            }
        }
    }
    
    answer.sort(by: >)
    if !answer.isEmpty && answer.first! == "0" {
        // print(answer.joined())
        return Int(answer.joined())! == 0 ? "0" : String(Int(answer.joined())!)
    }    
    // print(answer)

    return answer.isEmpty ? "-1" : answer.joined()
}