func solution(_ dartResult:String) -> Int {
    var scores = dartResult.components(separatedBy: ["S", "D", "T", "*", "#"]).filter{$0 != ""}.map{Int($0)!}
    var operation = dartResult.split(whereSeparator: {$0.isNumber})
    
    for (index, score) in scores.enumerated() {
        for j in operation[index] {
            switch j {
                case "S":
                break
                case "D":
                scores[index] *= scores[index]
                case "T":
                scores[index] *= scores[index] * scores[index]
                case "*":
                if index != 0 {
                    scores[index-1] *= 2
                }
                scores[index] *= 2
                case "#":
                scores[index] *= -1
                default:
                break
            }
        }
    }
    
    return scores.reduce(0, +)
}