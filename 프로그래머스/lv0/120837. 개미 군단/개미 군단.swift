import Foundation

func solution(_ hp:Int) -> Int {
    var a = hp/5
    var b = hp%5/3
    var c = hp%5%3
    
    return a+b+c
}