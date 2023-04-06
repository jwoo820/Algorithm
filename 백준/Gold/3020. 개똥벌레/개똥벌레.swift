import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let n = input[0]    // 동굴의 길이
let h = input[1]    // 동굴의 높이

var up: [Int] = Array(repeating: 0, count: h+1)      // 종유석
var down: [Int] = Array(repeating: 0, count: h+1)    // 석순

// 장애물 입력
for i in 0..<n {
    if i%2 == 0 {
        down[Int(readLine()!)!] += 1
    } else {
        up[Int(readLine()!)!] += 1
    }
}

// 높이가 높은수부터 작은수까지 누적합을 통해서 해당 높이일때 충돌하는 장애물 계산

for i in stride(from: h-1, to: 0, by: -1) {
    down[i] += down[i+1]
    up[i] += up[i+1]
}
//print(down)
//print(up)

var min = n
var count = 0

for i in 1...h {
    if min > down[i] + up[h-i+1] {
        min = down[i] + up[h-i+1]
        count = 1
    } else if min == down[i] + up[h-i+1] {
        count += 1
    }
}

print(min, count)
