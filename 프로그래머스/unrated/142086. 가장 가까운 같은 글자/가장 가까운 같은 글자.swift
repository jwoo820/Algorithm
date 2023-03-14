import Foundation

func solution(_ s:String) -> [Int] {
    var answerArr: [Int] = []
    var str = Array(s)
    
    for i in 0..<str.count {
        var temp = str[i]
        var answer = -1
        for j in 0..<i {
            let c = str[j]
            if c == temp {
                answer = i - j
            }
        }
        answerArr.append(answer)
    }
    
    return answerArr
}