import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    var answer = -1
    var arr = String(num).map{Int(String($0))!}
    for i in 0..<arr.count {
        if arr[i] == k {
            answer = i + 1
            break
        }
    }
    return answer
}