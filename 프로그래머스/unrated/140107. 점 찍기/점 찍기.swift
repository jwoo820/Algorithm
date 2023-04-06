import Foundation

func solution(_ k:Int, _ d:Int) -> Int64 {
    // (x-k)^2 + (y-k)^2 <= d^2 -> xy 좌표가 k의 배수인 좌표

    var answer = 0
    for i in stride(from: 0, through: d, by: k) {
        let y = sqrt(pow(Double(d), 2) - pow(Double(i), 2))
        answer += Int(y/Double(k)) + 1  // 원점 포함해야함 + 1
    }
    
    return Int64(answer)
}