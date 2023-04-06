import Foundation

func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
    
    var gcdA = arrayA[0]
    var gcdB = arrayB[0]
    
    for i in 0..<arrayA.count {
        gcdA = gcd(gcdA, arrayA[i])
        gcdB = gcd(gcdB, arrayB[i])
    }
    
    var answer = 0
    
    if isDivision(arrayA, gcdB) {
        answer = gcdB
    }
    
    if isDivision(arrayB, gcdA) {
        if answer < gcdA {
            answer = gcdA
        }
    }
    return answer
}

func isDivision(_ arr: [Int], _ gcd: Int) -> Bool {
    for i in arr {
        if i%gcd == 0 {
            return false
        }
    }
    
    return true
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if a%b == 0 {
        return b
    }
    return gcd(b, a%b)
}