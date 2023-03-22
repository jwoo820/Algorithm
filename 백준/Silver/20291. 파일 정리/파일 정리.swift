import Foundation

let input = readLine()!
var dic: [String: Int] = [:]

for _ in 1...Int(input)! {
    let file = readLine()!.components(separatedBy: ".")
    dic[file[1], default: 0] += 1
}

for i in dic.sorted(by: {$0.0 < $1.0}) {
    print("\(i.key) \(i.value)")
}
