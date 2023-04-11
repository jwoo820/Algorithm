import Foundation
// [16, 8, 4, 2, 1]
// [[0,0],[0,-1],[2,-3],[3,-3]]
// [33.0,31.5,0.0,-1.0]

func solution(_ k:Int, _ ranges:[[Int]]) -> [Double] {
    var answer: [Double] = []
    var collatz: [Double] = [Double(k)]
    var k = k
    while k != 1 {
        if k%2 == 0 {
            k /= 2
        } else {
            k = 3*k+1
        }
        collatz.append(Double(k))
    }

    var length = collatz.count-1
    for range in ranges {
        if range.first! > length + range.last! {
            answer.append(-1.0)
        } else {
            var sum = 0.0
            for i in range.first!..<length+range.last! {
                sum += (collatz[i] + collatz[i+1])/2
            }
            answer.append(sum)
        }
    }
    
    return answer
}