import Foundation

func solution(_ angle:Int) -> Int {
    var answer = 0
    switch angle {
        case 0..<90:
        answer = 1
        case 90:
        answer = 2
        case 91..<180:
        answer = 3
        default:
        answer = 4
    }
    
    return answer
}