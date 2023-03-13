import Foundation

func solution(_ my_string:String) -> String {
    var dic: [String: Int] = [:]
    var array = Array(my_string)
    
    for i in 0..<array.count {
        if dic[String(array[i])] == nil {
            dic[String(array[i])] = i
        }
    }
    return dic.sorted{$0.value < $1.value}.map{$0.key}.joined()
}