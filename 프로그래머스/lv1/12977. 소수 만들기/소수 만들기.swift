import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                var sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) {
                    answer += 1
                } 
            }
        }
    }

    return answer
}

func isPrime(_ num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}