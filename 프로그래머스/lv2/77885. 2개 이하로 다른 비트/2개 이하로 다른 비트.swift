import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    
    var answer: [Int64] = []
    
    for number in numbers {
        var radix = String(number ,radix: 2)
        var reverse = Array(radix.reversed())
        if !radix.contains("0") {
            reverse.append("1")
            reverse[reverse.count-2] = "0"
            var num = String(reverse.reversed())
            answer.append(Int64(num, radix: 2)!)

        } else {
            // 1개만 다른 경우
            var index = reverse.firstIndex(of: "0")!
            reverse[index] = "1"
            if index != 0 {
                reverse[index-1] = "0"
            }
            var num = String(reverse.reversed())
            answer.append(Int64(num, radix: 2)!)

        }
    }
    
    return answer
}