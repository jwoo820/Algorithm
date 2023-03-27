func solution(_ arr:[Int]) -> [Int] {
    var answer = arr
    var min = arr.min()!
    answer.remove(at: answer.firstIndex(of: min)!)
    
    
    return answer.count == 0 ? [-1] : answer
}