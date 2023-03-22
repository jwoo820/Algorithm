import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    // 스테이지에 도달한 플레이어 : 현재 스테이지
    var denominator = stages.count
    
    var failure: [(Int ,Double)] = []
    for i in 1...N {
        var numerator = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                numerator += 1
            }
        }

        failure.append((i, (Double(numerator)/Double(denominator))))
        denominator -= numerator
    }
    // worst case : 1,000,000,000
    return failure.sorted(by: {$0.1 > $1.1}).map{$0.0}
}