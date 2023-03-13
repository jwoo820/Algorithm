import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var answer = ""
    for i in my_string {
        var arr = Array(repeating: i, count: n)
        answer += String(arr)
    }
    return answer
}