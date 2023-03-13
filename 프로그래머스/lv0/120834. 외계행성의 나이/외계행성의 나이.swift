import Foundation

func solution(_ age:Int) -> String {
    let arr = ["a","b","c","d","e","f","g","h","i","j"]
    return String(age).map{Int(String($0))!}.map{arr[$0]}.joined()
}