import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var coke = n
    var count = 0
    
    while coke >= a {
        count += coke/a*b
        coke = coke/a*b + coke%a
    }
    return count
}