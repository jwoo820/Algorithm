import Foundation

func solution(_ n:Int) -> Int {
    var radix = String(String(n, radix: 3).reversed())
    
    return Int(radix, radix: 3)!
}