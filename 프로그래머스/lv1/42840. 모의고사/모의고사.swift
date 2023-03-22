import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let a = [1, 2, 3, 4, 5]
    let b = [2, 1, 2, 3, 2, 4, 2, 5]
    let c = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var dic: [Int: Int] = [:]
    for (i, answer) in answers.enumerated() {
        if answer == a[i%a.count] { dic[1, default: 0] += 1 }
        if answer == b[i%b.count] { dic[2, default: 0] += 1 }
        if answer == c[i%c.count] { dic[3, default: 0] += 1 }
    }
    // print(dic)
    let max = dic.values.max()!
    
    
    return dic.filter{$0.value == max}.keys.sorted()
}