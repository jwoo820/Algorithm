import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var answer = 0
    var ab = Array(zip(a, b))
    for i in ab {
        answer += i.0*i.1
    }
    return answer
}