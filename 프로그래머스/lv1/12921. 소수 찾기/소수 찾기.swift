import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    
    for i in 2...n {
        if isPrime(i) { 
            answer += 1 
        } 
    }
    
    return answer
}

func isPrime(_ num: Int) -> Bool {
    if num < 4 {
        return true
    }
    
    for i in 2..<Int(sqrt(Double(num)))+1 {
        if num%i == 0 {
            return false
        }
    }
    return true
}