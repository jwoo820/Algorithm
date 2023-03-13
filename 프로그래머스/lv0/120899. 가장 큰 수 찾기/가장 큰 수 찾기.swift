import Foundation

func solution(_ array:[Int]) -> [Int] {
    var dic: [Int: Int] = [:]
    for i in 0..<array.count {
        dic[i] = array[i]
    }
    var sort = dic.sorted{$0.1 > $1.1}
    return [sort[0].1, sort[0].0]
}