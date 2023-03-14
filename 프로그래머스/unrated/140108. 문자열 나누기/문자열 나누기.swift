import Foundation

func solution(_ s:String) -> Int {
    var answer = 0 
    var count1 = 0
    var count2 = 0
    var x = ""
    for i in s {
        if count1 == count2 {
            answer += 1
            x = String(i)
        }
        if x == String(i) {
            count1 += 1
        } else {
            count2 += 1
        }
        
    }
    
    return answer
}