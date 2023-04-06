import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    // 귤 종류:개수
    var box: [Int: Int] = [:]
    
    for i in tangerine {
        box[i, default: 0] += 1
    }
    
    
    let sortedBox = box.values.sorted(by: >)
        
    var sum = 0
    var answer = 0
    for (i, num) in sortedBox.enumerated() {
        if sum + num >= k {
            answer = i+1
            break
        } 
        
        sum += num
    }
    return answer
}