import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var redix = String(n, radix: k)
    var answer = 0

    var split = redix.components(separatedBy: "0").filter{ $0 != ""}
    // print(split)    
    
    for i in split {
        if isPrime(Int(i)!) {
            answer += 1
        }
    }
    
    return answer
}

func isPrime(_ n: Int) -> Bool {
    if n < 4 {
        return n == 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(n))) {
        if n%i == 0 { return false }
    }
    return true
}