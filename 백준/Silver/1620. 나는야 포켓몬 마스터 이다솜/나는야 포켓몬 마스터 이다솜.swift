let input = readLine()!.split(separator: " ").map { Int($0)! }
var name: [Int: String] = [:]
var num: [String: Int] = [:]

for i in 1...input[0] {
    let pocketmon = readLine()!
    name[i] = pocketmon
    num[pocketmon] = i
}

for _ in 0..<input[1] {
    let answer = readLine()!
    if let num = Int(answer) {
        print(name[num]!)
    } else {
        print(num[answer]!)
    }
}
