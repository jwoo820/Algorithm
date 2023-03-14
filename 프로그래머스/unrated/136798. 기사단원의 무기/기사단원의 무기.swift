import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    // 약수 구하기
    var primeCount: [Int] = []
    
    print(Int(sqrt(2)))
    // 1234
    for i in 1...number {
        var count = 0
        
        for j in 1...Int(sqrt(Double(i))) {
           if i%j == 0 {
                if i/j == j {
                    count += 1
                } else {
                    count += 2
                }
            }
        }
        primeCount.append(count)
    }

    var answer: [Int] = []

    for num in primeCount {
        answer.append(num > limit ? power : num)
    }

    return answer.reduce(0, +)
}