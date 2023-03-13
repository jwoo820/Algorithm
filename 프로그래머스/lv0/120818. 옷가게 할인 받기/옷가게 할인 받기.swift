import Foundation

func solution(_ price:Int) -> Int {
    var answer = 0
    switch price {
        case 10..<100000:
        answer = price
        case 100000..<300000:
        answer = Int(Double(price) * 0.95)
        case 300000..<500000:
        answer = Int(Double(price) * 0.90)
        default:
        answer = Int(Double(price) * 0.80)
    }
    
    return answer
}